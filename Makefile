
build-minimal:
	source poky/oe-init-build-env ./build && bitbake core-image-minimal

build-sato:
	source poky/oe-init-build-env ./build && bitbake core-image-sato

.PHONY: build-minimal build-sato