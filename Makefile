.POSIX:

PREFIX = /usr

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -p bookmenu $(DESTDIR)$(PREFIX)/bin
	chmod 755 $(DESTDIR)$(PREFIX)/bin/bookmenu
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1
	cp -p documentation/bookmenu.1 $(DESTDIR)$(PREFIX)/share/man/man1
	mkdir -p $(DESTDIR)$(PREFIX)/share/bookmenu
	cp -p config/* $(DESTDIR)$(PREFIX)/share/bookmenu

uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/bookmenu
	rm -rf $(DESTDIR)$(PREFIX)/share/man/man1/bookmenu.1
	rm -rf $(DESTDIR)$(PREFIX)/share/bookmenu

.PHONY: install uninstall
