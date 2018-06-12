import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KWindowSystem"

	Depends {
		name: "Qt"
		submodules: ["core", "gui"]
	}


	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	
	// TODO probe for libxcb
	dynamicLibsRelease: [
		Qt.core.libPath + "/libQt5Core.so." + Qt.core.version,
		Qt.core.libPath + "/libQt5Gui.so." + Qt.core.version,
		"xcb"
	]

	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KWindowSystem"
	libNameForLinkerRelease: "KWindowSystem"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5WindowSystem.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KWindowSystem"]
}
