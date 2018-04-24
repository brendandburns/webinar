FROM debian:9

RUN apt-get update
RUN apt-get install -yy git

COPY clone.sh /clone.sh
COPY sync.sh /sync.sh

RUN chmod a+x /sync.sh
RUN chmod a+x /clone.sh

CMD /sync.sh
