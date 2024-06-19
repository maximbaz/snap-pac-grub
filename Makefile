.PHONY: release

release:
	rm -rf release
	mkdir -p release
	tar -czf snap-pac-grub.tar.gz grub-mkconfig zz-snap-pac-postz-grub.hook LICENSE
	gpg --detach-sign --yes snap-pac-grub.tar.gz
	mv snap-pac-grub.tar.gz* release
