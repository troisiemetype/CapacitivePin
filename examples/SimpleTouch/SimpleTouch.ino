/*
 * Using an Arduino pin as a capacitive sensor, with CapacitivePin library
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

#include "DigitalPin.h"
#include "CapacitivePin.h"

CapacitivePin sensePin;
DigitalPin led;

uint16_t lastread = 0;
uint8_t interval = 5;

void setup(){
	Serial.begin(115200);

	led.init(13, OUTPUT);
	led.clear();

	uint8_t status = sensePin.begin(2, 3);

	sensePin.setTouchThreshold(100);
	sensePin.setTouchReleaseThreshold(80);

	Serial.println();
	Serial.print("baseline \t");
	Serial.println(sensePin.getBaseline());
	Serial.println();
	Serial.println();
}

void loop(){
	sensePin.update();
	uint8_t state = sensePin.getState();

//	Serial.print(state);
//	Serial.print('\t');
//	Serial.println(sensePin.getData());

	if(sensePin.isTouched()){
		led.set();
	} else {
		led.clear();
	}
/*
	if((millis() - lastread) > interval){
		lastread = millis();
		Serial.print("base \t");
		Serial.print(sensePin.getBaseline());
		Serial.print("\t read \t");
		Serial.println(sensePin.getData());
	}
*/
}