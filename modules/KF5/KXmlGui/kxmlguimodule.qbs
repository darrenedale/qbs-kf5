import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KXmlGui"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: ["Attica", "KGlobalAccel", "KTextWidgets"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KXmlGui"
	libNameForLinkerRelease: "KXmlGui"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5XmlGui.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KXmlGui"]
}
