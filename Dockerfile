FROM ubuntu:16.04
MAINTAINER Sam Smith <yo@samsmith.io>

# Install kpartx, qemu-user-static, curl, git, binfmt-support, iptables, and nodejs v6 packages.
RUN apt-get update &&\
  apt-get install --yes kpartx qemu-user-static curl git binfmt-support iptables &&\
  curl -sL https://deb.nodesource.com/setup_6.x | bash &&\
  apt-get install --yes nodejs

# Install jenny.
RUN git clone --quiet https://github.com/pincio/jenny.git /opt/jenny &&\
  sh -c "cd /opt/jenny && npm install"

# Install forge.
RUN mkdir -p /opt/pinc/forge/bin
COPY forge /opt/pinc/forge/bin

ENTRYPOINT ["/opt/pinc/forge/bin/forge"]
