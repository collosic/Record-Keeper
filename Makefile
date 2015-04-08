# 
# Make file for Lab 1 - ICS 53
# Christian Collosi
# 11233529 - UC Irvine
#

C = gcc
CFLAGS = -I.
DEPS = node.h
OBJ = record.o

%.o: %.c $(DEPS)
	$(CC) -g -c -Wall -o $@ $< $(CFLAGS)

record: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)

clean:	
	rm -f record *.o
