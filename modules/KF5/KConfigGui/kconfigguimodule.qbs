import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KConfigGui"

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
	libNameForLinkerDebug: "KConfigGui"
	libNameForLinkerRelease: "KConfigGui"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5ConfigGui.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KConfigGui"]
}
