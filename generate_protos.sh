# Compile all the proto files in the /proto directory
echo "[INFO] Compiling protos..."
protoc -Ilib/models/grpc/protos $(find lib/models/grpc/protos -iname "*.proto") --dart_out=grpc:lib/models/grpc/generated
echo "[INFO] Done."