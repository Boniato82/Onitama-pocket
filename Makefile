
LCC = /opt/gbdk/bin/lcc
CC  = $(LCC) -Wm-yc -Wl-m
BIN = Onitama.gbc
OBJS = Onitama.o

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) -o $(BIN) $(OBJS)

clean_temp:
	&& rm -f *.o *.lst *.sym *.asm *.gb *.ihx *.noi *.map




