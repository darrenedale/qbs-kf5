import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KService"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core"]
	}

	Depends {
		name: "KF5"
		submodules: ["KI18n", "KConfig", "KDBusAddons", "KCrash"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KService"
	libNameForLinkerRelease: "KService"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Service.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KService"])
}
