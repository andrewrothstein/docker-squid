FROM ubuntu
MAINTAINER Andrew Rothstein "andrew.rothstein@gmail.com"

RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y squid3

USER proxy
ADD squid.conf /etc/squid3/squid.conf

ENTRYPOINT ["/usr/sbin/squid3"]
CMD ["-N", "-X"]

EXPOSE 3128