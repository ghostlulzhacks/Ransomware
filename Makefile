CC = gcc
OPT = -O0
LDFLAGS = -lcrypto

all: clean bin encrypt decrypt

clean:
	if [ bin/encrypt ]; then rm -f bin/encrypt; fi;
	if [ bin/decrypt ]; then rm -f bin/decrypt; fi;
bin:
	mkdir bin
encrypt:
	$(CC) $(OPT) $(S_COMMON) encrypt.c -o bin/encrypt $(LDFLAGS)
decrypt:
	$(CC) $(OPT) $(S_COMMON) decrypt.c -o bin/decrypt $(LDFLAGS)
