iso/ubuntu-18.04.2-desktop-amd64.iso:
	wget --directory-prefix=./iso --timeout=10 --tries=10 \
		http://releases.ubuntu.com/18.04.2/ubuntu-18.04.2-desktop-amd64.iso

customized-ubuntu-18.04.2-desktop-amd64.iso: iso/ubuntu-18.04.2-desktop-amd64.iso isolinux.cfg custom.seed
	rm -rf tmp ; \
	mkdir -p tmp ; \
	7z x -otmp iso/ubuntu-18.04.2-desktop-amd64.iso ; \
	cp -f isolinux.cfg tmp/isolinux/isolinux.cfg ; \
    cp -f custom.seed tmp/preseed/custom.seed ; \
	mkisofs -o customized-ubuntu-18.04.2-desktop-amd64.iso \
            -b isolinux/isolinux.bin \
            -c isolinux/boot.cat \
            -no-emul-boot \
            -boot-load-size 4 \
            -boot-info-table \
            -J -r -R -l -input-charset default -allow-lowercase -allow-multidot  \
            -V "CustomUbuntu1804" \
            tmp
