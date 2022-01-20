# DOTFILES

# gentoo portage profile for 

```etc/portage/make.conf```

```
COMMON_FLAGS="-march=sandybridge -O2 -pipe"
CFLAGS="${COMMON_FLAGS}"
CXXFLAGS="${COMMON_FLAGS}"

MAKEOPTS="-j4"

PORTAGE_TMPDIR="/var/tmp"

DISTDIR=/var/gentoo/distfiles

ACCEPT_LICENSE="-* @FREE"

LINGUAS="en en_US"

USE=" x aac acpi adns afs alsa -bluetooth colord curl gif gimp gif jack 
jpeg latex man pdf rss sound unicode usb vim cscope terminal wifi zip -systemd -kde -mate -gnome -xfce -iphone -ipad -macos -ios -microsoft"

 
VIDEO_CARDS="intel"
```

> after setting or altering VIDEO_CARDS values 
> remember to update the system using the following command so the changes take effect:

```root #emerge --ask --changed-use --deep @world```




## adapting the entire system to the new USE flags 

> run this command to update USE-flags globally after you updated them

```sudo eerge --update --deep --newuse @world'```


