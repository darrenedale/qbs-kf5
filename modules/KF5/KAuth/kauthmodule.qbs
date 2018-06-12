import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KAuth"
	kf5Tier: 2

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5.KCoreAddons"
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KAuth"
	libNameForLinkerRelease: "KAuth"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Auth.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KAuth"])
}
