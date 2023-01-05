# RT360 DataWeave of the Week

## Build Locally

### Download Dataweave CLI
https://github.com/mulesoft-labs/data-weave-cli

I went with the manual installation at C:\Users\AmritSinghBains\.dw

### Version
 - DataWeave Command Line : V1.0.9
 - DataWeave Runtime: V2.3.2-SNAPSHOT

### Make it available on path
C:\Users\AmritSinghBains\.dw\bin

### To run locally
dw --eval --spell amritsinghbainsrevtech360/RT

## Docker

### Build
docker build -t amritsinghbainsrevtech360/revtech360dw .

### Tagging to publish
docker tag amritsinghbainsrevtech360/revtech360dw amritsinghbainsrevtech360/revtech360dw:latest
docker tag amritsinghbainsrevtech360/revtech360dw amritsinghbainsrevtech360/revtech360dw:v1

### Push
docker push amritsinghbainsrevtech360/revtech360dw:latest
docker push amritsinghbainsrevtech360/revtech360dw:v1

### To run the application
docker run --rm -it -p 8083:8081 amritsinghbainsrevtech360/revtech360dw:latest

And then go to on browser http://localhost:8083

### Expert testing
To view a particular week's quiz go to http://localhost:8083/?weekNumber=20