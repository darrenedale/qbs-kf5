import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KIONTLM"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KIONTLM"
	libNameForLinkerRelease: "KIONTLM"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5KIONTLM.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/kio"])
}
