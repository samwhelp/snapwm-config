
# User Config


## Subject

* [User Config Dir Path](#user-config-dir-path)
* [User Config File List](#user-config-file-list)
* [Howto](#howto)


## User Config Dir Path

* [~/.config/snapwm](./)

## User Config File List

run

``` sh
tree --dirsfirst ~/.config/snapwm
```

show

```
/home/user/.config/snapwm
├── bin
│   ├── snapwm-wallpaper-ctrl-default
│   └── snapwm-wallpaper-ctrl-shuf
├── style
│   ├── bar
│   │   └── snapwm-bar-clock.sh
│   └── picom
│       └── picom.conf
├── apps.conf
├── autostart
├── environment
├── key.conf
└── rc.conf

4 directories, 9 files
```

## Howto

### Install

``` sh
make install
```

### Remove

``` sh
make remove
```
