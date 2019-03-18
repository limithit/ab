all: ab

ab: ab.c 
	gcc -o ab ab.c `pkg-config --cflags-only-I apr-util-1` `pkg-config --cflags-only-I apr-1` `pkg-config --libs apr-1` `pkg-config --libs apr-util-1` `pkg-config --libs libssl` -lm

clean:
	rm ab
	
install:
	cp ab /usr/sbin
