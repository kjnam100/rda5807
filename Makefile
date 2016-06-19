CC=gcc
CFLAGS=-Wall 
OBJECTS=rda5807.o
BINARIES=rda5807
LDFLAGS+= -lm -lwiringPi

all : $(BINARIES)

%.o : %.c
	$(CC) $(CFLAGS) -c -o $@ $< $(LDFLAGS)

clean:
	rm -f $(OBJECTS) $(BINARIES)

FORCE:
.PHONY: FORCE
