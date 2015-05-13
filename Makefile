SRC = sas/sas.ino
BOARD ?= arduino:avr:diecimila
SERIAL ?= /dev/ttyUSB0
ARDUINO = arduino --pref build.path=bin --board $(BOARD) --port $(SERIAL)

default: compile

compile: bin
	$(ARDUINO) --verify $(SRC)

upload: bin
	$(ARDUINO) --upload $(SRC)

clean:
	rm -rf bin

bin:
	@mkdir -p $@

.PHONY: default compile upload
