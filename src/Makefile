TARGET = test
SRC = test.cu

BUILD_DIR = build
BIN = $(BUILD_DIR)/$(TARGET)

NVCC = nvcc

.PHONY: all run clean

all: $(BIN)

$(BIN): $(SRC) | $(BUILD_DIR)
	$(NVCC) $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(BIN)
	./$(BIN)

clean:
	rm -rf $(BUILD_DIR)