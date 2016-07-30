# Forge

## What?

Forge builds PiNC images. Given a set of network throttling profiles, Forge will configure
[a Raspbian image](https://www.raspberrypi.org/downloads/raspbian/) so that it'll operate as a
wireless router, with a WLAN per profile. The default profiles are
[the average 4G and 3G mobile network connections in the UK][0].

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

[0]: https://github.com/pincio/jenny/blob/dev/profiles.yaml
