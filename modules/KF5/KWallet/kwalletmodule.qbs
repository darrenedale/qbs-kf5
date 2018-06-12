import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KWallet"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "gui"]
	}

	Depends {
		name: "KF5"
		submodules: ["KNotifications", "KIconThemes", "KService"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version, Qt.core.libPath + "/libQt5Gui.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KWallet"
	libNameForLinkerRelease: "KWallet"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Wallet.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KWallet"])
}
