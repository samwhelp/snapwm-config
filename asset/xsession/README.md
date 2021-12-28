
# Boot

## Subject

* [Xsession](#xsession)
* [Autostart](#autostart)
* [Howto](#howto)


## Xsession

| Path | Note |
| --- | --- |
| [/usr/share/xsessions/snapwm-session.desktop](xsessions/snapwm-session.desktop) | start here |
| [/usr/share/snapwm/xsessions/snapwm-session](xsessions/snapwm-session) | snapwm-session.desktop call this script |


## Autostart

> Not using system wild if user file exists.

### System Wild

| Path |
| --- |
| [/usr/share/snapwm/config/snapwm/environment](config/snapwm/environment) |
| [/usr/share/snapwm/config/snapwm/autostart](config/snapwm/autostart) |


### Per User

| Path |
| --- |
| [~/.config/snapwm/environment](../asset/config/environment) |
| [~/.config/snapwm/autostart](../asset/config/autostart) |


## Howto

### Install

``` sh
make install
```

### Remove

``` sh
make remove
```
