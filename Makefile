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
	@echo '	$$ make prepare_arch_build'
	@echo
	@echo '	$$ make build'
	@echo
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo
	@echo '	$$ make config_install'
	@echo

.PHONY: help


install: snapwm_install xsession_install config_install
.PHONY: install

remove: snapwm_remove xsession_remove config_remove
.PHONY: remove


##
## * https://aur.archlinux.org/packages/dwm/
## * https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=dwm
##

prepare_arch_build:
	sudo pacman -Sy --needed libx11 libxinerama libxft freetype2
.PHONY: prepare_arch_build

clone:
	git clone https://github.com/moetunes/snapwm-stable.git src/snapwm
.PHONY: clone

build:
	make -C src/snapwm
.PHONY: build

snapwm_install: build
#	sudo install -Dm755 ./src/snapwm/snapwm /usr/bin/snapwm
	sudo install -Dm755 ./src/snapwm/snapwm /usr/local/bin/snapwm
.PHONY: snapwm_install


snapwm_remove:
#	sudo rm -f /usr/bin/snapwm
	sudo rm -f /usr/local/bin/snapwm
.PHONY: snapwm_remove




xsession_install:
	make -C ./asset/xsession install
.PHONY: xsession_install

xsession_remove:
	make -C ./asset/xsession remove
.PHONY: xsession_remove




config_install:
	make -C ./asset/config install
.PHONY: config_install

config_remove:
	make -C ./asset/config remove
.PHONY: config_remove
