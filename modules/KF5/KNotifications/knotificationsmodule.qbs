import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KNotifications"
	kf5Tier: 2

	Depends {
		name: "Qt"
		submodules: ["core"]
	}

	Depends {
		name: "KF5"
		submodules: ["KCoreAddons", "KCodecs", "KConfig", "KWindowSystem"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	
	// TODO probe for phonon libs
	dynamicLibsRelease: [
		Qt.core.libPath + "/libQt5Core.so." + Qt.core.version,
		"phonon4qt5",
		"phonon4qt5experimental",
	]

	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KNotifications"
	libNameForLinkerRelease: "KNotifications"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Notifications.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KNotifications"])
}
