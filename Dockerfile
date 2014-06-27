FROM ubuntu
MAINTAINER Andrew Rothstein "andrew.rothstein@gmail.com"

RUN apt-get update
RUN apt-get install -y squid3

ADD squid.conf /etc/squid3/squid.conf

ENTRYPOINT ["/usr/sbin/squid3"]
CMD ["-N", "-X"]

EXPOSE 3128