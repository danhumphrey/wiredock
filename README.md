# WireDock

A simple WireMock Dockerfile.

>WireMock is a flexible library for stubbing and mocking web services. Unlike general purpose mocking tools it works by creating an actual HTTP server that your code under test can connect to as it would a real web service.

For more information, visit the [WireMock website](http://wiremock.org/)

## WireMock Version
1.55

## Running

Port 8080 is exposed for port mapping, but this can be mapped to any local port

	docker run -p 9999:8080 danhumphrey/wiredock

### Volumes

The following volumes are mounted for serving files and json mappings 

* /wiremock/__files
* /wiremock/mappings

eg.

	docker run -p 8080:8080 -v ~/Desktop/wiredock/mappings:/wiredock/mappings danhumphrey/wiredock 

### Arguments

Arguments can be passed to switch on proxy recording, verbose logging etc. 

eg.

	docker run -p 8080:8080 -v ~/Desktop/wiredock/mappings:/wiredock/mappings danhumphrey/wiredock --verbose
