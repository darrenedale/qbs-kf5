import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KUserFeedbackCore"

	Depends {
		name: "Qt.core"
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: [Qt.core.libPath + "/libQt5Core.so." + Qt.core.version]
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KUserFeedbackCore"
	libNameForLinkerRelease: "KUserFeedbackCore"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5UserFeedbackCore.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KUserFeedbackCore"])
}
