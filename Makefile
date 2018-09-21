OUTDIR := bin
BIN := techo
VERSION := 1.0.0-1
ARCH := amd64
DEB := $(BIN)_$(VERSION)_$(ARCH).deb
INSTALL_DIR := /usr/local/bin

all: build

build:
	mkdir -p $(OUTDIR)
	g++ -std=c++1z -Wall -Werror -O3 *.cpp -o $(OUTDIR)/$(BIN)

install:
	mkdir -p $(INSTALL_DIR)
	install -m 0755 $(OUTDIR)/$(BIN) $(INSTALL_DIR)/$(BIN)

uninstall:
	rm -rf $(INSTALL_DIR)/$(BIN)

clean:
	rm -rf $(OUTDIR)

package-deb:
	mkdir -p ./$(OUTDIR)/debian$(INSTALL_DIR)
	mkdir -p ./$(OUTDIR)/debian/DEBIAN
	cp ./$(OUTDIR)/$(BIN) ./$(OUTDIR)/debian$(INSTALL_DIR)
	cp control ./$(OUTDIR)/debian/DEBIAN
	find ./$(OUTDIR)/debian -type d | xargs chmod 0755
	dpkg-deb --build ./$(OUTDIR)/debian ./$(OUTDIR)/$(DEB)

install-deb:
	dpkg -i ./$(OUTDIR)/$(DEB)

uninstall-deb:
	dpkg -r $(BIN)

clean-deb:
	rm -rf ./$(OUTDIR)/debian
	rm -rf ./$(OUTDIR)/$(DEB)

