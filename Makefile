all: ab

ab: ab.c 
	gcc -o ab ab.c ap_config_auto.h ap_release.h `pkg-config --cflags-only-I apr-util-1` `pkg-config --cflags-only-I apr-1` `pkg-config --libs apr-1` `pkg-config --libs apr-util-1` `pkg-config --libs libssl` -lm

clean:
	rm ab
	
install:
	cp ab /usr/sbin
