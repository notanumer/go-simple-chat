LOCAL_BIN := $(CURDIR)\bin

install-golangci-lint:
	@echo "Installing golangci-lint..."
	@if not exist "$(LOCAL_BIN)" mkdir "$(LOCAL_BIN)"
	set GOBIN=$(LOCAL_BIN) && go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

lint:
	"$(LOCAL_BIN)\golangci-lint.exe" run ./... --config .golangci.pipeline.yaml