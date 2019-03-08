-- relay.lua

-- Copyright © 2019 Matt Morton

-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation 
-- files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy,
-- modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software 
-- is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
-- WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS 
-- OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
-- ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 



relayPin = 4        			 -- Declare RELAY pin no. (D4)
delayuS = 5000000 				 -- Set delay in microSecond. here 0.5 second

gpio.mode(relayPin,gpio.OUTPUT)  -- Set RELAY pin as GPIO output pin

gpio.write(relayPin,gpio.LOW)    -- Set RELAY pin HIGH i.e. RELAY ON
tmr.delay(delayuS) 				 -- timer Delay
gpio.write(relayPin,gpio.HIGH)   -- Set RELAY pin LOW i.e. RELAY OFF
tmr.delay(delayuS) 				 -- timer Delay

