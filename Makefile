app: src/main.cpp
	g++ -o $@ $<

all: app

clean:
	rm app -rf

install: app
	install -D -m 0755 app $(DESTDIR)/usr/bin/app

.PHONY: clean install all
