POSSIBLE += $(shell ls -1 | egrep -v '\.dat|README|Makefile' | sed -e 's/$$/.dat/g')
.PHONY: clean

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@

clean :
	-rm *.dat
