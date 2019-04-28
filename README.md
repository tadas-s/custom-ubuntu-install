# Unattended and customized Ubuntu 18.04 installs

## Requirements

Linux system with Virtualbox for install testing.

## Getting started

Run `build-and-run` which will download some extra dependencies, build image and start
a Virtualbox machine to test the install process.

## Putting the image into usb stick

Assuming usb stick is `/dev/sdc` and the pre-built image name is install.iso:

```
sudo dd bs=1M if=install.iso of=/dev/sdc
```

## Ubuntu LTS installer documentation

Note that Ubuntu has two install methods:

1. Ubiquity installer (which is a fairly limited install from a pre-built complete system 
   image).
2. Network install using [Debian Installer][1].

This customized installer is the "Debian installer" flavour. Best place for documentation
is Debian docs.

[1]: https://wiki.debian.org/DebianInstaller/
