build:

clean:

install:
	install -d ${DESTDIR}/usr/bin
	install -m 755 darcs-to-git ${DESTDIR}/usr/bin

uninstall:
	rm ${DESTDIR}/usr/bin/darcs-to-git
