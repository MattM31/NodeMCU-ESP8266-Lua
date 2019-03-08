-- LED.lua

-- Copyright © 2019 Matt Morton

-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), 
-- to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
-- and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
-- DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
-- THE USE OR OTHER DEALINGS IN THE SOFTWARE. 


ledPin = 1         		-- Defines the pin for the positive pin of the LED
delay = 5000000    		-- Defines the delay for the timer in microseconds

gpio.mode(ledPin,gpio.OUTPUT)   -- Sets the led pin as an output pin

gpio.write(ledPin,gpio.HIGH)	-- Turns the led on
tmr.delay(delay) 		        -- Wait for specified number of microseconds
gpio.write(ledPin,gpio.LOW)	    -- Turns the led on
tmr.delay(delay) 	        	-- Wait for specified number of microseconds


