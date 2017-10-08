# arch-i3

This is my ongoing project to use Arch Linux with i3 Windows Manager on the Samsung Chromebook Plus.

The Chromebook Plus is a touchscreen chromebook with an App Store running on ARM, so somethings that are x86 will not be compatible.

Added inputs to make the scrolling faster and other mouse usability. TO make these system defaults, move the files to /etc/[whatever directory].

Other things to keep in mind
- Setup local timezone
- Test with usb devices
- Download Chrome (chromium)
- Possibly change mod key to Search/Capslock thingy

## Todo

Big Problems:
1. Audio through headphones (issues with identifying jack)
2. Systemctl suspend logs out, even with lock. -This might be fixed?
	- Logging startx output (and /var/log/Xorg.0.log.old
		- One issue might be with: 
	- Current Suspicions: Rockchip cpu is causing Xserver to segfault.
```
(EE) 
(EE) Backtrace:
(EE) 
(EE) Segmentation fault at address 0x80
(EE) 
Fatal server error:
(EE) Caught signal 11 (Segmentation fault). Server aborting
(EE) 
(EE) 
```
```
gbm: failed to open any driver (search paths /usr/lib/xorg/modules/dri)
gbm: Last dlopen error: /usr/lib/xorg/modules/dri/rockchip_dri.so: cannot open shared object file: No such file or directory
```

Nice things to have:
1. Multiple finger gestures
2. Backup configs on github -DONE

### TODO-finished
1. Auto-connect Wifi 
2. Fix boot time (think this has something to do with wifi hanging)
	- The problems were together
	- Disable all individual profiles for netctl
	- Disable netctl for an interface that doesn't exist (this computer has wlp1s0, NOT wlan0)
	- These steps fixed the boot time. The problem was caused by the netctl attempting to connect using bad configurations, so fixing the configurations fixed the boot issue. From 1m30sec~ to 9sec~
	- To use netctl to auto connect to the internet, start netctl-auto as a systemd service
		- netctl-auto@wlp1s0.service


