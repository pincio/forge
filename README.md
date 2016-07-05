# Forge

## What?

Given [a Raspbian image](https://www.raspberrypi.org/downloads/raspbian/) and a set of network
profiles, Forge will build a Raspbian image that'll make a Raspberry Pi operate as a wireless
access point. For each network profile, the Raspberry Pi will create a wireless access point (WAP)
and corresponding [tc(8)](http://linux.die.net/man/8/tc) queuing disciplines and filters to manage
round-trip time (RTT) and bandwidth.

## Getting Started

You can install and setup Forge, and build a Raspbian image by executing the following commands:

    git clone https://github.com/pincio/forge.git
    cd forge
    cp /path/to/raspbian_lite_latest.img .
    vagrant up
    vagrant ssh
    cd /vagrant
    sudo ./forge /vagrant/raspbian_lite_latest.img

## Feedback

Your thoughts and comments are, of course, always welcome. In descending order of responsiveness,
you can:

* [PM me on IRC](https://webchat.freenode.net/),
* [create an issue on GitHub](https://github.com/pincio/forge/issues/new), or
* [send me an email](mailto:yo@samsmith.io)

## License

Forge is [MIT-licensed](./LICENSE).
