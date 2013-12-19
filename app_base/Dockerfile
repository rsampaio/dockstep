FROM ubuntu

ADD stack /build
RUN echo 'deb http://ubuntu-archive.locaweb.com.br/ubuntu precise main multiverse universe' > /etc/apt/sources.list
RUN /build/prepare
