make ARCH=arm64 myd_stm32mp257x_defconfig
make ARCH=arm64 LOCALVERSION="" Image modules -j16
gzip arch/arm64/boot/Image
make dtbs -j16
#make INSTALL_MOD_STRIP=1 modules_install INSTALL_MOD_PATH=./00_install -j16
cp arch/arm64/boot/dts/myir/myb-stm32mp257x-2GB.dtb arch/arm64/boot/dts/myir/myb-stm32mp257x-2GB-ethswitch.dtb arch/arm64/boot/dts/myir/myb-stm32mp257x-1GB-ethswitch.dtb arch/arm64/boot/dts/myir/myb-stm32mp257x-1GB.dtb arch/arm64/boot/Image.gz 00_install/

sync

