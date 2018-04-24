FROM debian:9

RUN apt-get update
RUN apt-get install -yy git
COPY sync.sh /sync.sh
RUN chmod a+x /sync.sh

CMD /sync.sh
