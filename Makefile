
PREFIX ?= /usr/local

install:
	install -Dm755 ./nspire-merge "$(DESTDIR)$(PREFIX)/bin/nspire-merge"

uninstall:
	$(RM) "$(DESTDIR)$(PREFIX)/bin/nspire-merge"

