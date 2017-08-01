/*
 * This Arduino library is for using Arduino pins as a capacitive sensor
 * Copyright (C) 2017  Pierre-Loup Martin
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY{

} without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


#include "CapacitivePin.h"

// Initialisation of vars
CapacitivePin::CapacitivePin():_samples(6),
								_reads(16),
								_sampleInterval(5),
								_maxDelta(1),
								_touchThreshold(100),
								_touchReleaseThreshold(80),
								_senseThreshold(10),
								_senseReleaseThreshold(7),
								_noiseIncrement(1),
								_noiseCountRising(5),
								_noiseCountFalling(2){
	_sendPin = DigitalPin();
	_receivePin = DigitalPin();
	_lastSampleTime = millis();
	_readIndex = 0;

	_mode = Setting;
}

// Public methods

// Initialisation of the capacitive pin
uint8_t CapacitivePin::begin(uint8_t receivePin, uint8_t sendPin){
	// Check that given pins does exist
	if((receivePin > PINS_NUMBER) || (sendPin > PINS_NUMBER)) return 1;

	_mode = Setting;

	// Set both send and receive pins as output, low.
	_receivePin.init(receivePin, OUTPUT);
	_receivePin.clear();
	_sendPin.init(sendPin, OUTPUT);
	_sendPin.clear();

	_previousState = _state = Idle;

	_noiseCountRising = 3;

	//Init the baseline value
	uint32_t baseline = 0;
	uint16_t i = 0;
	const uint16_t limit = 511;

	while(i < limit){
		if(update()){
			++i;
			baseline += _data;
		}
	}

	baseline /= limit;
	_baseline = baseline;

	_mode = Running;

	return 0;
}

// Update the sensed value
uint8_t CapacitivePin::update(){
	// Every sample interval, get a new reading
	if((millis() - _lastSampleTime) > _sampleInterval){
		_timeout = _baseline + 2 * _touchThreshold;
		_lastSampleTime = millis();
		// Compute the average from the last _reads readings
		_runningAverage -= _raws[_readIndex];
		_raws[_readIndex] = updateSample();
		_runningAverage += _raws[_readIndex];

		_data = _runningAverage / _reads;

		if(++_readIndex >= _reads) _readIndex = 0;

		updateRead();	

		return 1;
	}

	return 0;
}

void CapacitivePin::setTouchThreshold(uint8_t threshold){
	_touchThreshold = threshold;
}

void CapacitivePin::setTouchReleaseThreshold(uint8_t threshold){
	_touchReleaseThreshold = threshold;
}

// Set a new value for the number of samples for one reading (first level filtering)
void CapacitivePin::setSamples(uint8_t numSamples){
	if(numSamples == 0) numSamples = 1;
	_samples = numSamples;
}

// Set a new value for the numbers fo readings took for running average (second level filtering)
void CapacitivePin::setReads(uint8_t numReads){
	if(numReads == 0) numReads = 1;
	_reads = numReads;
}

// Set a new value for sample interval (in milliseconds)
void CapacitivePin::setInterval(uint16_t delay){
	if(delay == 0) delay = 1;
	_sampleInterval = delay;

}

void CapacitivePin::setMaxDelta(uint8_t maxDelta){
	_maxDelta = maxDelta;
}

void CapacitivePin::setNoiseIncrement(uint8_t noiseIncrement){
	_noiseIncrement = noiseIncrement;
}

void CapacitivePin::setNoiseCountRising(uint8_t noiseCount){
	_noiseCountRising = noiseCount;
}

void CapacitivePin::setNoiseCountFalling(uint8_t noiseCount){
	_noiseCountFalling = noiseCount;
}

bool CapacitivePin::isTouched(){
	if(_state == Touch) return true;
	return false;
}

bool CapacitivePin::isJustTouched(){
	if(_state == Touch && _previousState != Touch) return true;
	return false;
}

bool CapacitivePin::isJustTouchReleased(){
	if(_state != Touch && _previousState == Touch) return true;
	return false;
}

bool CapacitivePin::isProximity(){
	if(_state == Proximity) return true;
	return false;
}

bool CapacitivePin::isJustProximity(){
	if(_state == Proximity && _previousState != Proximity) return true;
	return false;
}

bool CapacitivePin::isJustProximityReleased(){
	if(_state != Proximity && _previousState == Proximity) return true;
	return false;
}

uint16_t CapacitivePin::getData(){
	return _data;
}

uint8_t CapacitivePin::getBaseline(){
	return _baseline;
}

uint8_t CapacitivePin::getState(){
	return _state;
}

// Protected methods

// Get a new reading cycle
// TODO: add a timeout value
uint16_t CapacitivePin::updateSample(){
	// Local vars for computing average of several samples
	uint16_t total = 0;
	uint16_t average = 0;
	cli();

	// Get n (_samples) mesurements
	for(uint8_t i = 0; i < _samples; i++){

		uint16_t count = 0;
		// Set the receive pin as input, then the send pin high.
		_receivePin.setDirection(INPUT);
		_sendPin.set();

		// loop until the receive pin reads high
		for(uint16_t i = 0; i < _timeout; i++){
			if(_receivePin.get()) break;
			++count;
		}
		// Set the receive pin as output, low, to let it discharge before the next read cycle.
		// Set the send pin low too.
		_receivePin.setDirection(OUTPUT);
		_receivePin.clear();
		_sendPin.clear();

		total += count;
	}

	sei();

	// Compute the average of the readings
	average = total / _samples;

	return average;
}

uint8_t CapacitivePin::updateRead(){
	int16_t delta = _data - _baseline; 
	int16_t absDelta = abs(delta);

	_previousState = _state;

	if(absDelta <= _maxDelta){
		_baseline += delta;
		_state = Idle;
	} else if((delta > (int8_t)_touchThreshold) && (_mode == Running)){
		_state = Touch;

	} else if((delta > (int8_t)_senseThreshold) && (_mode == Running)){
		_state = Proximity;

	} else if(delta > 0){
		_state = Rising;
		updateNoise();

	} else if(delta < 0){
		_state = Falling;
		updateNoise();

	}

	if(_state == Touch){
		if(delta < (int8_t)_touchReleaseThreshold){
			if(delta > (int8_t)_senseReleaseThreshold){
				_state = Proximity;
			} else {
				_state = Idle;
			}
		}

	} else if(_state == Proximity){
		if(delta > (int8_t)_touchThreshold){
			_state = Touch;
		} else if(delta < (int8_t)_senseReleaseThreshold){
			_state = Idle;
		}

	}

	Serial.print("delta \t");
	Serial.print(delta);
	Serial.print("\t base \t");
	Serial.print(_baseline);
	Serial.print("\t data \t");
	Serial.print(_data);
	Serial.print("\t state \t");
	Serial.println(_state);

	return _state;
}

// Update the baseline value.
// TODO: 
uint8_t CapacitivePin::updateBaseline(){
	return 0;
}

uint8_t CapacitivePin::updateNoise(){
	if(_state == Rising){
		if(_previousState != _state){
			_noiseInstantCount = 0;
		} else if(++_noiseInstantCount >= _noiseCountRising){
			_noiseInstantCount = 0;
			_baseline += _noiseIncrement;
			_state = Idle;
		}
	} else if(_state == Falling){
		if(_previousState != _state){
			_noiseInstantCount = 0;
		} else if(++_noiseInstantCount >= _noiseCountFalling){
			_noiseInstantCount = 0;
			_baseline -= _noiseIncrement;
			_state = Idle;
		}
	}
	return _state;
}
