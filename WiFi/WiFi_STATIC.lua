-- WiFi_STATIC.lua

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


wifi.setmode(wifi.STATION) -- Sets the NodeMCU in station mode

-- WiFi variables
wifi.sta.sethostname("NodeMCU") --Sets the NodeMCU hostname

station_variables={
ssid = "SSID",
pwd = "PASSWORD",
ip = "192.168.001.003",
netmask = "255.255.255.000",
gateway = "192.168.001.001"
}


wifi.sta.config(station_variables) -- Starts connection to Access Point using the variables

-- Continuously prints Connecting until an IP address is assigned to the chip, then executes the code in the else section of the if statement 
tmr.alarm(0,1000, 1, function() -- 1 second loop timer
   if wifi.sta.getip()==nil then -- if IP is not assigned
      print("Connecting........") 
   else
      print('ip: ',wifi.sta.getip()) -- prints the IP address of the NodeMCU
	  
      -- put your code here to be executed once WiFi is connected

      tmr.stop(0)   
   end
 
end)