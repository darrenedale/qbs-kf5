import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KDESu"
	kf5Tier: 3

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		submodules: ["KPty", "KService"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KDESu"
	libNameForLinkerRelease: "KDESu"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Su.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KDESu"]
}
