import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KFileMetaData"
	kf5Tier: 2

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		submodules: ["KArchive", "KI18n"]
	}


	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	
	// TODO probe for libpoppler-qt5 and libtag
	dynamicLibsRelease: [
		Qt.core.libPath + "/libQt5Core.so." + Qt.core.version,
		"poppler-qt5",
		"tag"
	]
	
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KFileMetaData"
	libNameForLinkerRelease: "KFileMetaData"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5FileMetaData.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KFileMetaData"])
}
