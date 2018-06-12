import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KEmoticons"
	kf5Tier: 3

	Depends {
		name: "Qt.core"
	}

	Depends {
		name: "KF5"
		submodules: ["KService"]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KEmoticons"
	libNameForLinkerRelease: "KEmoticons"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5Emoticons.so." + version

	cpp.includePaths: [baseIncludePath + "/KF5/KEmoticons"]
}
