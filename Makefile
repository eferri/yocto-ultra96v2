
build-minimal:
	source poky/oe-init-build-env ./build && \
	bitbake core-image-minimal

build-sato:
	source poky/oe-init-build-env ./build && \
	bitbake core-image-sato

clean-minimal:
	source poky/oe-init-build-env ./build && \
	bitbake -c cleansstate core-image-minimal

clean-sato:
	source poky/oe-init-build-env ./build && \
	bitbake -c cleansstate core-image-sato

menuconfig:
	source poky/oe-init-build-env ./build && \
	bitbake linux-yocto -c kernel_configme -f && \
	bitbake linux-yocto -c menuconfig

fs:
	./scripts/mount_sd.sh && ./scripts/write_sd.sh && ./scripts/eject_sd.sh

mount-sd:
	./scripts/mount_sd.sh

write-sd:
	./scripts/write_sd.sh

eject:
	./scripts/eject_sd.sh

.PHONY: build-minimal build-sato clean-minimal clean-sato fs