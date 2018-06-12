import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KConfigWidgets"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "gui", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: ["KCoreAddons", "KAuth", "KI18n", "KConfig", "KWidgetsAddons", "KGuiAddons", "KCodecs"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version, Qt.core.libPath + "/libQt5Gui.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KConfigWidgets"
	libNameForLinkerRelease: "KConfigWidgets"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5ConfigWidgets.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KConfigWidgets"])
}
