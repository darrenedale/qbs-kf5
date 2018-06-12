import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KGlobalAccel"
	kf5Tier: 2

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		// TODO is the dependency on KConfig or just KConfigCore?
		submodules: ["KDBusAddons", "KConfig", "KCrash"]
	}


	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	
	// TODO probe for libxcb-keysyms
	dynamicLibsRelease: [
		Qt.core.libPath + "/libQt5Core.so." + Qt.core.version,
		"xcb-keysyms"
	]

	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KGlobalAccel"
	libNameForLinkerRelease: "KGlobalAccel"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5GlobalAccel.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KGlobalAccel"])
}
