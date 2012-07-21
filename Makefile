
all: package

package: PKGBUILD.gen
	makepkg -p PKGBUILD.gen

PKGBUILD.gen: PKGBUILD touchpadtoggle
	sed 's/md5sums=.*$$/'`makepkg -g 2>/dev/null`/ PKGBUILD > PKGBUILD.gen

.PHONY: package all

