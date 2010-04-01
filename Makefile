build: build-man

build-man:
	help2man -n "darcs-to-git - converts a Darcs repository into a Git repository" --no-info ./darcs-to-git --output darcs-to-git.1

clean:
	-rm darcs-to-git.1

install: install-man
	install -d ${DESTDIR}/usr/bin
	install -m 755 darcs-to-git ${DESTDIR}/usr/bin

install-man:
	install -d ${DESTDIR}/usr/share/man/man1/
	install darcs-to-git.1 ${DESTDIR}/usr/share/man/man1/

uninstall:
	rm ${DESTDIR}/usr/bin/darcs-to-git
	rm ${DESTDIR}/usr/share/man/man1/darcs-to-git.1
