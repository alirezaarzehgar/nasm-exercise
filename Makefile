SRC := $(wildcard *.asm)
BINS := $(SRC:.asm=)

all: $(BINS)

$(BINS): $(SRC)
	nasm -f elf64 $<
	ld $@.o -o $@
clean:
	rm -rf $(BINS) *.o
