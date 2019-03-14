# Unattended and customized Ubuntu 18.04 installs

## Getting started

Mac OS requirements to build the installer .iso image:

```bash
brew install cdrtools
brew cask install virtualbox
brew install p7zip
```

Download the [Ubuntu 18.04.02 Desktop edition][1] into `iso` folder (full ~2GB image option).  

## Ubuntu LTS installer documentation

Installation options in `custom.seed` and other installation guidance documented here:

1. [Automatic installation chapter][2]
2. [Full guide][3]

## Building the iso image

Run the following:

```bash
./build-and-run
``` 

This will build image and start a Virtualbox VM with the image mounted for testing.

[1]: http://releases.ubuntu.com/18.04.2/
[2]: https://help.ubuntu.com/lts/installation-guide/amd64/ch04s06.html
[3]: https://help.ubuntu.com/lts/installation-guide/amd64/index.html
