
build-minimal:
	source poky/oe-init-build-env ./build && \
	bitbake petalinux-image-minimal

clean-minimal:
	source poky/oe-init-build-env ./build && \
	bitbake -c cleansstate petalinux-image-minimal

deps:
	source poky/oe-init-build-env ./build && \
	bitbake -g petalinux-image-minimal

menuconfig:
	source poky/oe-init-build-env ./build && \
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

.PHONY: build-minimal clean-minimal build-sd mount-sd bootfs-sd rootfs-sd eject-sd erase-sd