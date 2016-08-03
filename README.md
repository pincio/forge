# Forge

Forge builds [PiNC](https://www.pinc.io) images.

## What?

Given a set of network throttling profiles, Forge will configure
[a Raspbian image](https://www.raspberrypi.org/downloads/raspbian/) so that your Raspberry Pi will
operate as a wireless router, with a WLAN per profile. The default profiles are
[the average 4G and 3G mobile network connections in the UK][0].

## Getting Started

You can build a Raspbian image by executing the following commands:

    cd $(dirname /path/to/raspbian_lite_latest.img)
    docker run --rm --privileged -v $PWD:/tmp pinc/forge /tmp/raspbian_lite_latest.img

## Feedback

Your thoughts and comments are, of course, always welcome. In descending order of responsiveness,
you can:

* [PM me on IRC](irc://chat.freenode.net/pinc),
* [create an issue on GitHub](https://github.com/pincio/forge/issues/new), or
* [send me an email](mailto:yo@samsmith.io)

## License

Forge is [MIT-licensed](./LICENSE).

[0]: https://github.com/pincio/jenny/blob/dev/profiles.yaml
