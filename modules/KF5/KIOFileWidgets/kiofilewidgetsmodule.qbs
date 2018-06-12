import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KIOFileWidgets"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: ["KIOCore", "KBookmarks", "Solid", "KJobWidgets", "KWallet"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KIOFileWidgets"
	libNameForLinkerRelease: "KIOFileWidgets"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5KIOFileWidgets.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KIOFileWidgets"])
}
