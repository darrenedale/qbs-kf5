import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KCompletion"
	kf5Tier: 2

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: ["KWidgetsAddons", "KConfig"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KCompletion"
	libNameForLinkerRelease: "KCompletion"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Completion.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KCompletion"])
}
