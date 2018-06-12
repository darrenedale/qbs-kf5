import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KPty"
	kf5Tier: 2

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		submodules: ["KCoreAddons", "KI18n"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KPty"
	libNameForLinkerRelease: "KPty"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Pty.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KPty"])
}
