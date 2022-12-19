
NAME = nspire-merge

SHELL = /bin/sh
RM = rm
PREFIX ?= /usr/local

deps:
	pip install Pillow

install:
	install -Dm755 $(NAME) "$(DESTDIR)$(PREFIX)/bin/$(NAME)"
	install -Dm644 $(NAME).1 "$(DESTDIR)$(PREFIX)/share/man/man1/$(NAME).1"

uninstall:
	$(RM) "$(DESTDIR)$(PREFIX)/bin/$(NAME)"
	$(RM) "$(DESTDIR)$(PREFIX)/share/man/man1/$(NAME).1"
