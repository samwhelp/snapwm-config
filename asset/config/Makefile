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
#	tree --dirsfirst ~/.config/snapwm
.PHONY: install

autostart-install:
	install -Dm644 ./snapwm/environment ~/.config/snapwm/environment
	install -Dm755 ./snapwm/autostart ~/.config/snapwm/autostart
.PHONY: autostart-install

config-install:
	install -Dm644 ./snapwm/rc.conf ~/.config/snapwm/rc.conf
	install -Dm644 ./snapwm/key.conf ~/.config/snapwm/key.conf
	install -Dm644 ./snapwm/apps.conf ~/.config/snapwm/apps.conf
.PHONY: config-install

bar-install:
	install -Dm755 ./snapwm/style/bar/snapwm-bar-clock.sh ~/.config/snapwm/style/bar/snapwm-bar-clock.sh
.PHONY: bar-install

picom-install:
	install -Dm644 ./snapwm/style/picom/picom.conf ~/.config/snapwm/style/picom/picom.conf
.PHONY: picom-install




remove: autostart-remove config-remove bar-remove picom-remove
#	tree --dirsfirst ~/.config/snapwm
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
