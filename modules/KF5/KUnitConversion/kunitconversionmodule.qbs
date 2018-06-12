import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KUnitConversion"

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5.KI18n"
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KUnitConversion"
	libNameForLinkerRelease: "KUnitConversion"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5UnitConversion.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KUnitConversion"])
}
