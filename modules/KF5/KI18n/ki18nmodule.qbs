import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KI18n"

	Depends {
		name: "Qt.core"
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KI18n"
	libNameForLinkerRelease: "KI18n"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5I18n.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KI18n"])
}
