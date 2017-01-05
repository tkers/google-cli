
BIN_DIR=/usr/local/bin
BIN_FILE=google
BOLD=\033[1;37m
NORM=\033[0m

all:
	@echo "usage: make install"
	@echo "       make uninstall"

install:
	@install -m 0755 $(BIN_FILE) $(BIN_DIR) && \
	echo "Successfully installed: $(BOLD)$(BIN_DIR)/$(BIN_FILE)$(NORM)"

uninstall:
	@test -d $(BIN_DIR) && \
	cd $(BIN_DIR) && \
	rm -f $(BIN_FILE) && \
	echo "Removed: $(BOLD)$(BIN_DIR)/$(BIN_FILE)$(NORM)"
