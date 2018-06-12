import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KBookmarks"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: ["KXmlGui"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KBookmarks"
	libNameForLinkerRelease: "KBookmarks"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Bookmarks.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KBookmarks"]
}
