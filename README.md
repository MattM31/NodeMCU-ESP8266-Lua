# NodeMCU

I’m new to coding so I’ve created this after struggling to find really simple and well explained examples for my hobby projects.

Current code includes:    <br>
&nbsp;  LEDs    <br>
  5v Relays    <br>
  MFRC-522 RFID (reader)    <br>

I'm hoping to start a Youtube channel with tutorials soon (ish).

This repository  contains my NodeMCU lua examples, each folder contains the .lua file an image of the wiring setup and any notes to explain the setup where required.

As I’m new to coding if anyone can see any errors or improvements to my code please let me know so I can update it.

All wiring images were created using <a href="http://fritzing.org">fritzing</a>

The firmware was built on <a href="https://nodemcu-build.com">nodemcu-build</a>, and flashed with <a href="https://github.com/marcelstoer/nodemcu-pyflasher">nodemcu-pyflasher</a>

I connect to my ESP8266 and upload the code using <a href="https://esp8266.ru/esplorer/">Esplorer</a>

<h1>WiFi</h1>


<h1>LED</h1>

Uses Pin 1 (D1) as the positive power source for the LED, the code turns the LED on for 5 seconds then off for 5 seconds. 

<h1>Relay</h1>

Basically the same code as the LED but it triggers the relay switch rather than powers the LED (it also uses pin 4 (D4) as the output pin). Take special note of the wiring diagram as the relay I used requires 5v and the NodeMCU is only 3.3v so and additional 5v power source is required. Also make sure your relay has the JD-VCC pin as many 1-channel relays don't. 

<h1>MFRC-522 RFID (reader)</h1>

This code is adapted from multiple examples I found on the internet that I couldn't get to work. Its the most basic I can make it while making sure it still works correctly. Its a basic card reader, when you call RC522.init it will wait for a card to be presented to the reader and print the card number in hex. (calling the function is already done at the bottom of the code file so just running the file will start it off)

Your firmware must include the following modules for the code to work:
bit, file, gpio, net, node, spi, timer, uart, wifi
