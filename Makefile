PREFIX	=/opt
BINDIR	=${PREFIX}/bin

INSTALL	=install

all::	rpmcmp

check:: rpmcmp list-a list-b
	./rpmcmp list-a list-b

install:: rpmcmp
	${INSTALL} -D rpmcmp ${BINDIR}/rpmcmp

uninstall::
	${RM} ${BINDIR}/rpmcmp
