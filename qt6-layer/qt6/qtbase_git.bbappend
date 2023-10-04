# Modify qtbase to enable appropriate graphics for StarFive VisionFive 2

# Supporting documentation:
# http://doc.qt.io/qt-6/configure-linux-device.html

# For RPi4:
# '... we expect that EGL, OpenGL ES and EGLFS GBM are all reported as yes, otherwise the EGLFS platform plugin and its eglfs_kms backend will not be functional on the device. For getting function mouse, keyboard, and touch input, either evdev or libinput must be enabled.'


# Correct machine architecture for this chip 
BUILD_CC_ARCH += "_zihintpause"


do_configure_append() {
	# Make clean required?
	echo "riscv64-poky-linux-g++ -dumpspecs = "
	echo riscv64-poky-linux-g++ -dumpspecs
}

# Recipe that provides libgles3 libgles2 libgles1:
# https://layers.openembedded.org/layerindex/recipe/333647/

# PACKAGECONFIG_FONTS_jh7110 = "fontconfig"
# PACKAGECONFIG:remove:jh7110 = "tests x11 wayland"
# Works with RPi4: PACKAGECONFIG:append:jh7110 = " examples accessibility eglfs gles2 gbm linuxfb tslib libinput"

# PACKAGECONFIG:append:jh7110 = " examples accessibility gles2 linuxfb tslib libinput"

