SUMMARY = "QT QML Test Recipe"
LICENSE = "CLOSED"
PR = "202362"

# SRCREV="${AUTOREV}"

SRC_URI = "file://CMakeLists.txt	     \
           file://main.cpp              \
           file://Main2.qml              "

# QT_COMMERCIAL_MODULES="1"

EXTRA_OECMAKE += "-DCMAKE_FIND_DEBUG_MODE=TRUE, -DQT_DEBUG_FIND_PACKAGE=ON"

DEPENDS += " qtbase \
             qtdeclarative-native \
             qtquick3d \
           "

# For QuickControls
DEPENDS += "  qttools-native \
              qtshadertools-native \
           "

S = "${WORKDIR}"

# Manually add this file, must be a better way!
do_install:append() {
    install -d ${D}${bindir}
    install -m 0644 ${S}/Main2.qml ${D}${bindir}
}

inherit qt6-cmake
