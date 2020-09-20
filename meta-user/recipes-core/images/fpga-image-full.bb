DESCRIPTION = "Basic image"

require recipes-core/images/petalinux-image-common.inc 

COMMON_FEATURES_append_ultra96v2 = "\
    package-management \
"

IMAGE_INSTALL_append_ultra96v2 = "\
        bc \
        bonnie++ \
        bridge-utils \
        can-utils \
        coreutils \
        ethtool \
        fpga-manager-script \
        haveged \
        hellopm \
        i2c-tools \
        iperf3 \
        json-c \
        kernel-modules \
        lmsensors-sensorsdetect \
        mtd-utils \
        openssh-sftp-server \
        packagegroup-core-boot \
        packagegroup-core-ssh-dropbear \
        packagegroup-petalinux-gstreamer \
        packagegroup-petalinux-matchbox \
        packagegroup-petalinux-v4lutils \
        pciutils \
        pmic-prog \
        run-postinsts \
        sds-lib \
        tcf-agent \
        udev-extraconf \
        usbutils \
        watchdog-init \
        xrt \
        xrt-dev \
        zocl \
        bluez5 \
        cmake \
        git \
        iw \
        libftdi \
        opencl-clhpp-dev \
        opencl-headers-dev \
        packagegroup-base-extended \
        packagegroup-petalinux \
        packagegroup-petalinux-96boards-sensors \
        packagegroup-petalinux-self-hosted \
        packagegroup-petalinux-ultra96-webapp \
        packagegroup-petalinux-utils \
        python3-pip \
        ultra96-ap-setup \
        ultra96-misc \
        ultra96-radio-leds \
        ultra96-wpa \
        usb-gadget-ethernet \
        usb-gadget-ethernet-init \
        wilc3000-fw \
        wilc \
"