
build:
	source poky/oe-init-build-env && \
	bitbake fpga-image-full

build-minimal:
	source poky/oe-init-build-env && \
	bitbake petalinux-image-minimal

clean-minimal:
	source poky/oe-init-build-env && \
	bitbake -c cleansstate petalinux-image-minimal

deps:
	source poky/oe-init-build-env && \
	bitbake -g petalinux-image-minimal

menuconfig:
	source poky/oe-init-build-env && \
	bitbake linux-yocto -c kernel_configme -f && \
	bitbake linux-yocto -c menuconfig

build-sd:
	./scripts/mount_sd.sh && ./scripts/bootfs.sh && \
	./scripts/rootfs.sh && ./scripts/eject_sd.sh

mount-sd:
	./scripts/mount_sd.sh

bootfs-sd:
	./scripts/bootfs.sh

rootfs-sd:
	./scripts/rootfs.sh

eject-sd:
	./scripts/eject_sd.sh

erase-sd:
	./scripts/erase_sd.sh

clean-all:
	rm -rf ./build/*.log ./build/tmp ./build/sstate-cache \
		   ./build/cache ./build/buildhistory

.PHONY: build build-minimal clean-minimal clean-all
.PHONY: build-sd mount-sd bootfs-sd rootfs-sd eject-sd erase-sd