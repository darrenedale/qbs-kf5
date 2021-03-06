import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KActivities"
	kf5Tier: 2

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		// TODO is the dependency on KConfig or just KConfigCore?
		submodules: ["KCoreAddons", "KConfig"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KActivities"
	libNameForLinkerRelease: "KActivities"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Activities.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KActivities"])
}
