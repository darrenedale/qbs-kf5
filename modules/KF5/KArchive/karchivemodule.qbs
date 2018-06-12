import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KArchive"

	Depends {
		name: "Qt.core"
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KArchive"
	libNameForLinkerRelease: "KArchive"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Archive.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KArchive"])
}
