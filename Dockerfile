FROM findspire/wheezy
MAINTAINER Celogeek <me@celogeek.com>

ENV DEBIAN_FRONTEND noninteractive

ADD scripts /
RUN chmod +x /setup.sh && /setup.sh && rm /setup.sh
