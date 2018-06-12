import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KIOCore"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core"]
	}

	Depends {
		name: "KF5"
		submodules: ["KBookmarks", "Solid"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KIOCore"
	libNameForLinkerRelease: "KIOCore"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5KIOCore.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KIOCore"])
}
