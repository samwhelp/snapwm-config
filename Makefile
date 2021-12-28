default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make clone'
	@echo
	@echo '	$$ make prepare-arch-build'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo

.PHONY: help


install: snapwm-install xsession-install config-install
.PHONY: install

remove: snapwm-remove xsession-remove config-remove
.PHONY: remove


##
## * https://aur.archlinux.org/packages/dwm/
## * https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=dwm
##

prepare-arch-build:
	sudo pacman -Sy --needed libx11 libxinerama libxft freetype2
.PHONY: prepare-arch-build

clone:
	git clone https://github.com/moetunes/snapwm-stable.git src/snapwm
.PHONY: clone

build:
	make -C src/snapwm
.PHONY: build

snapwm-install: build
#	sudo install -Dm755 ./src/snapwm/snapwm /usr/bin/snapwm
	sudo install -Dm755 ./src/snapwm/snapwm /usr/local/bin/snapwm
.PHONY: snapwm-install


snapwm-remove:
#	sudo rm -f /usr/bin/snapwm
	sudo rm -f /usr/local/bin/snapwm
.PHONY: snapwm-remove




xsession-install:
	make -C ./asset/xsession install
.PHONY: xsession-install

xsession-remove:
	make -C ./asset/xsession remove
.PHONY: xsession-remove




config-install:
	make -C ./asset/config install
.PHONY: config-install

config-remove:
	make -C ./asset/config remove
.PHONY: config-remove
