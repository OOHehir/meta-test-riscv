# Modify qtbase to enable appropriate graphics applicable board

# Based on: http://doc.qt.io/qt-6/configure-linux-device.html need to enable EGLFS platform plugin:
# '... we expect that EGL, OpenGL ES and EGLFS GBM are all reported as yes, otherwise the EGLFS platform plugin and its eglfs_kms backend will not be functional on the device. For getting function mouse, keyboard, and touch input, either evdev or libinput must be enabled.'

# For StarFive VisionFive 2
PACKAGECONFIG_FONTS_jh7110 = "fontconfig"
PACKAGECONFIG:remove:jh7110 = "tests x11 wayland"
# Works with RPi4: PACKAGECONFIG:append:jh7110 = " examples accessibility eglfs gles2 gbm linuxfb tslib libinput"

# PACKAGECONFIG:append:jh7110 = " examples accessibility gles2 linuxfb tslib libinput"

