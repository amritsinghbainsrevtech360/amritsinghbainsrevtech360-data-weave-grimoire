FROM adoptopenjdk/openjdk8:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y unzip

USER root

RUN curl -L https://github.com/mulesoft-labs/data-weave-cli/releases/download/v1.0.9/dw-1.0.9-Linux.zip > dw.zip

RUN mkdir .dw
RUN unzip dw.zip -d .dw
# Unpack and install the kernel

ENV PATH="${PATH}:/.dw/bin"

RUN cd .dw
RUN mkdir grimoires

EXPOSE 8081

CMD  ["dw", "--eval", "--spell", "amritsinghbainsrevtech360/RT"]
