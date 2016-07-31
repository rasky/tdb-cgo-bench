FROM golang:1.7rc3

RUN apt-get update
RUN apt-get install -y build-essential pkg-config libjudy-dev libarchive-dev time

ENV TRAILDB_VERSION 0.5
RUN curl -fsSL "https://github.com/traildb/traildb/archive/$TRAILDB_VERSION.tar.gz" -o traildb.tar.gz \
	&& tar -C / -xzf traildb.tar.gz \
	&& rm -f traildb.tar.gz

RUN curl -fsSL "http://traildb.io/data/wikipedia-history-small.tdb" -o wikipedia-history-small.tdb

WORKDIR /traildb-$TRAILDB_VERSION
RUN ./waf configure --prefix=/usr build install

COPY . /go/src/app
WORKDIR /go/src/app
RUN go install -v

WORKDIR /go/src/app/c-src
RUN gcc -o capp *.c -ltraildb && cp capp /usr/local/bin

WORKDIR /go
