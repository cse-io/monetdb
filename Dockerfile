FROM ubuntu:saucy
MAINTAINER cseio <folks@cse.io>

# Install packages
RUN echo "deb http://dev.monetdb.org/downloads/deb/ saucy monetdb" >> /etc/apt/sources.list.d/monetdb.list
RUN echo "deb-src http://dev.monetdb.org/downloads/deb/ saucy monetdb" >> /etc/apt/sources.list.d/monetdb.list
RUN apt-get install wget -y
RUN wget --output-document=- http://dev.monetdb.org/downloads/MonetDB-GPG-KEY | apt-key add -
RUN apt-get update -y
RUN apt-get install monetdb5-sql -y
CMD ["mserver5"]
