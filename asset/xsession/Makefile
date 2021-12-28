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
	@echo '	$$ make install'
	@echo
	@echo '	$$ make remove'
	@echo

.PHONY: help


install: xsession-install config-install
.PHONY: install

xsession-install:
	sudo install -Dm644 ./xsessions/snapwm-session.desktop /usr/share/xsessions/snapwm-session.desktop
	sudo install -Dm755 ./xsessions/snapwm-session /usr/share/snapwm/xsessions/snapwm-session
.PHONY: xsession-install

config-install:
	sudo install -Dm644 ./config/snapwm/environment /usr/share/snapwm/config/snapwm/environment
	sudo install -Dm755 ./config/snapwm/autostart /usr/share/snapwm/config/snapwm/autostart
.PHONY: config-install




remove: xsession-remove config-remove
.PHONY: remove

xsession-remove:
	sudo rm -f /usr/share/xsessions/snapwm-session.desktop
	sudo rm -f /usr/share/snapwm/xsessions/snapwm-session
.PHONY: xsession-remove

config-remove:
	sudo rm -f /usr/share/snapwm/config/snapwm/environment
	sudo rm -f /usr/share/snapwm/config/snapwm/autostart
.PHONY: config-remove
