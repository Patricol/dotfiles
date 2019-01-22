#!/bin/bash

echo "Only run this from an RDP GUI terminal."

if [ ! -f ~/piano2.wav ]; then
	wget http://www.kozco.com/tech/piano2.wav
fi

paplay piano2.wav

