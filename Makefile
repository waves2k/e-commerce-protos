PROTO_DIR = ./proto
OUTPUT_DIR = ./gen/go

MODULE_NAME = github.com/waves2k/e-commerce-protos


gen-auth:
	@protoc \
	--proto_path=$(PROTO_DIR) \
	--go_out=$(OUTPUT_DIR) \
	--go_opt=module=$(MODULE_NAME) \
	--go-grpc_out=$(OUTPUT_DIR) \
	--go-grpc_opt=module=$(MODULE_NAME) \
	$(PROTO_DIR)/auth/*.proto


gen-proto: gen-auth
	