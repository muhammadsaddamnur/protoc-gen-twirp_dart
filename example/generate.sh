
#!/usr/bin/env bash

go build ../main.go

# twirp service build
protoc -I . --plugin=protoc-gen-custom=./main --custom_out=. dart_client/models/api_message.proto

# proto file build
protoc -I=dart_client/models --dart_out=dart_client/models dart_client/models/api_message.proto

dartfmt -w \
    ./models/api_message.twirp.dart

#dartfmt -w dart_client/service.dart