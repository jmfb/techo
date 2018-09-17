all: techo

techo: output
	g++ -std=c++1z -Wall -Werror -O3 *.cpp -o bin/techo

output:
	mkdir bin -p

install: all
	install -m 0755 bin/techo /usr/local/bin/techo

uninstall:
	rm -rf /usr/local/bin/techo

clean:
	rm -rf bin
