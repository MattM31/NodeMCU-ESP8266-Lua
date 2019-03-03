
ledPin = 1         		-- Defines the pin for the positive pin of the LED
delay = 5000000    		-- Defines the delay for the timer in microseconds

gpio.mode(ledPin,gpio.OUTPUT)   -- Sets the led pin as an output pin

gpio.write(ledPin,gpio.HIGH)	-- Turns the led on
tmr.delay(delay) 		-- Wait for specified number of microseconds
gpio.write(ledPin,gpio.LOW)	-- Turns the led on
tmr.delay(delay) 		-- Wait for specified number of microseconds


