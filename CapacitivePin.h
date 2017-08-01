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
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef CAPACITIVE_PIN_H
#define CAPACITIVE_PIN_H

#include <Arduino.h>
#include "DigitalPin.h"


class CapacitivePin{
public:

	enum state_t{
		Idle = 0,
		BaselineChanged,		// 1
		Rising,					// 2
		Falling,				// 3
		Proximity,				// 4
		Touch,					// 5
	};

	enum mode_t{
		Running = 0,
		Setting,
	};

	CapacitivePin();

	uint8_t begin(uint8_t receivePin, uint8_t sendPin);

	uint8_t update();

	void setTouchThreshold(uint8_t threshold);
	void setTouchReleaseThreshold(uint8_t threshold);
/*
	void setSenseThreshold(uint8_t threshold);
	void setSenseReleaseThreshold(uint8_t threshold);
*/
	void setSamples(uint8_t numSamples);
	void setReads(uint8_t numReads);
	void setInterval(uint16_t delay);

	void setMaxDelta(uint8_t maxDelta);
	void setNoiseIncrement(uint8_t noiseIncrement);
	void setNoiseCountRising(uint8_t noiseCount);
	void setNoiseCountFalling(uint8_t noiseCount);

	bool isTouched();
	bool isJustTouched();
	bool isJustTouchReleased();

	bool isProximity();
	bool isJustProximity();
	bool isJustProximityReleased();

	uint16_t getData();
	uint8_t getBaseline();
	uint8_t getState();

protected:

	uint16_t updateSample();
	uint8_t updateRead();
	uint8_t updateBaseline();
	uint8_t updateNoise();

private:
	// Pin definitions
	DigitalPin _sendPin;
	DigitalPin _receivePin;

	// Values for filtering
	// Number of samples for one reading
	uint8_t _samples;
	// Number of readings for one mesure
	uint8_t _reads;

	// Keep trace of time for regular readings
	uint8_t _sampleInterval;
	uint16_t _lastSampleTime;

	// values from readings.
	uint16_t _data;
	uint32_t _runningAverage;
	uint16_t _raws[16];
	uint8_t _readIndex;

	// Baseline values
	uint8_t _baseline;
	uint8_t _maxDelta;
	uint8_t _noiseIncrement;
	uint8_t _noiseCountRising;
	uint8_t _noiseCountFalling;
	uint8_t _noiseInstantCount;

	// Threshold values
	uint16_t _senseThreshold;
	uint16_t _senseReleaseThreshold;
	uint16_t _touchThreshold;
	uint16_t _touchReleaseThreshold;

	uint16_t _timeout;

	uint8_t _state;
	uint8_t _previousState;
	uint8_t _mode;

};

#endif