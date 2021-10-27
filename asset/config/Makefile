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
	@echo '	$$ make test'
	@echo

.PHONY: help


install: autostart-install config-install bar-install picom-install
#	tree ~/.config/snapwm
.PHONY: install

autostart-install:
	install -Dm644 ./environment ~/.config/snapwm/environment
	install -Dm755 ./autostart ~/.config/snapwm/autostart
.PHONY: autostart-install

config-install:
	install -Dm644 ./rc.conf ~/.config/snapwm/rc.conf
	install -Dm644 ./key.conf ~/.config/snapwm/key.conf
	install -Dm644 ./apps.conf ~/.config/snapwm/apps.conf
.PHONY: config-install

bar-install:
	install -Dm755 ./style/bar/snapwm-bar-clock.sh ~/.config/snapwm/style/bar/snapwm-bar-clock.sh
.PHONY: bar-install

picom-install:
	install -Dm644 ./style/picom/picom.conf ~/.config/snapwm/style/picom/picom.conf
.PHONY: picom-install




remove: autostart-remove config-remove bar-remove picom-remove
#	tree ~/.config/snapwm
.PHONY: remove

autostart-remove:
	rm -f ~/.config/snapwm/environment
	rm -f ~/.config/snapwm/autostart
.PHONY: autostart-remove

config-remove:
	rm -f ~/.config/snapwm/rc.conf
	rm -f ~/.config/snapwm/key.conf
	rm -f ~/.config/snapwm/apps.conf
.PHONY: config-remove

bar-remove:
	rm -f  ~/.config/snapwm/style/bar/snapwm-bar-clock.sh
.PHONY: bar-remove

picom-remove:
	rm -f  ~/.config/snapwm/style/picom/picom.conf
.PHONY: picom-remove



test:
	./xephyr-run-snapwm.sh
.PHONY: test

stop:
	killall -9 bash
.PHONY: stop
