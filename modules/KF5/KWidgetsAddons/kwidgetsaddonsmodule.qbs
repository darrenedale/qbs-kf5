import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KWidgetsAddons"

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KWidgetsAddons"
	libNameForLinkerRelease: "KWidgetsAddons"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5WidgetsAddons.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KWidgetsAddons"]
}
