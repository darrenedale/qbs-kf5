import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "Kirigami2"

	Depends {
		name: "Qt"
		submodules: ["core", "gui"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Gui.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "Kirigami2"
	libNameForLinkerRelease: "Kirigami2"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Kirigami2.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/Kirigami2"]
}
