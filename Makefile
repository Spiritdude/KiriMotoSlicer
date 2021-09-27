APPNAME = KiriMotoSlicer
BINNAME = kirimoto-slicer
LIBNAME = kirimoto
VERSION = 0.0.7
DEST_BIN = /usr/local/bin
DEST_LIB = /usr/local/lib
#DEST_BIN = ${HOME}/bin/
#DEST_LIB = ${HOME}/lib/js

all::
	@echo "make requirements install deinstall tests clean"

requirements::
	git clone https://github.com/GridSpace/grid-apps
	cd grid-apps
	npm i
	#sudo npm install -g @gridspace/app-server

install::
	tar cf - grid-apps | ( sudo mkdir -p ${DEST_LIB}/${LIBNAME}; cd ${DEST_LIB}/${LIBNAME} && sudo tar xf - )
	sudo cp ${BINNAME} ${DEST_BIN}/

deinstall::
	rm -f ${DEST_BIN}/${BINNAME}
	rm -f ${DEST_LIB}/${LIBNAME}

tests::
	cd tests && $(MAKE)

clean::

# -- devs only:

edit::
	${EDITOR} kirimoto-slicer Makefile README.md LICENSE tests/Makefile

change::
	git commit -am "..."

push::
	git push -u origin master

pull::
	git pull

backup::
	cd ..; tar cfvz ~/Backup/${APPNAME}-${VERSION}.tar.gz --exclude="*/grid-apps/*" ${APPNAME}; scp ~/Backup/${APPNAME}-${VERSION}.tar.gz backup:Backup/

