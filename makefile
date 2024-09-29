genProto:
	protoc --dart_out=grpc:./lib/_gen -I ./proto proto/v1/todo/todo.proto
	protoc --dart_out=grpc:./lib/_gen -I ./proto proto/v1/user/user.proto

watch:
	dart run build_runner watch