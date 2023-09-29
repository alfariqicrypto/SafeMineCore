
Debian
====================
This directory contains files used to package safeminemored/safeminemore-qt
for Debian-based Linux systems. If you compile safeminemored/safeminemore-qt yourself, there are some useful files here.

## safeminemore: URI support ##


safeminemore-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install safeminemore-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your safeminemore-qt binary to `/usr/bin`
and the `../../share/pixmaps/safeminemore128.png` to `/usr/share/pixmaps`

safeminemore-qt.protocol (KDE)

