# Buildroot-Overlay
Buildroot module to allow you to overlay configuration files from HTTP/TFTP

## Simple start 

1. Clone/Install BuildRoot
2. Clone this repository in a seperate directory
3. Add this repo to buildroot by using [external customization](https://buildroot.org/downloads/manual/manual.html#outside-br-custom)
4. Enable the overlay extention, and set the location to get the configuration file.

## Config File Location

The overlay script replaces {mac} with the mac address of the booting device. So you could for example use:
`tftp://10.0.0.1/configs/{mac}/overlay.tar.gz` 

