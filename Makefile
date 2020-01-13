CFLAGS=-arch x86_64
DEBUG=-g -DDEBUG
OPT=-O2

BIN_DIR=./

riemann : riemann.c
	gcc riemann.c $(OPT) $(CFLAGS) -o $(BIN_DIR)riemann
	gcc riemann.c $(DEBUG) $(CFLAGS) -o $(BIN_DIR)riemann-debug
	./riemann > riemann.html

clean :
	rm -fR Makefile~
	rm -fR *.*~
	rm -fR $(LIB_DIR)*.o 
	rm -f $(BIN_DIR)riemann
	rm -f $(BIN_DIR)riemann.html
	rm -f $(BIN_DIR)riemann-debug
	rm -fR $(BIN_DIR)riemann-debug.dSYM
