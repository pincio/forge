# Forge

## What?

Given [a Raspbian image](https://www.raspberrypi.org/downloads/raspbian/) and a set of network
profiles, Forge will build a Raspbian image that'll make a Raspberry Pi operate as a wireless
access point. For each network profile, the Raspberry Pi will create a wireless access point (WAP)
and corresponding [tc(8)](http://linux.die.net/man/8/tc) queuing disciplines and filters to manage
round-trip time (RTT) and bandwidth.

## Why?

From the perspective of the user,
[phuedx/micro-device-lab](https://github.com/phuedx/micro-device-lab) needs radical simplification.
µDL is unnecessarily complex, both to get running and in terms of UX: requiring the user to visit a
known address and interact with a custom UI ~~can~~ **must** be replaced by, the much more familiar,
download a pre-built Raspbian image and write it to an SD card.

## Getting Started

You can build a Raspbian image by executing the following commands:

    cp /path/to/raspbian_lite_latest.img .
    docker run --rm --privileged -v $PWD:/tmp pinc/forge /tmp/raspbian_lite_latest.img

## Feedback

Your thoughts and comments are, of course, always welcome. In descending order of responsiveness,
you can:

* [PM me on IRC](https://webchat.freenode.net/),
* [create an issue on GitHub](https://github.com/pincio/forge/issues/new), or
* [send me an email](mailto:yo@samsmith.io)

## License

Forge is [MIT-licensed](./LICENSE).
