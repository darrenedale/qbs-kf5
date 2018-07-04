import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KUserFeedback"

	Depends {
		name: "KF5"
		submodules: ["KUserFeedbackCore", "KUserFeedbackGui"]
	}

    hasLibrary: false
	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	dynamicLibsRelease: []

	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: ""
	libNameForLinkerRelease: ""
	libFilePathDebug: ""
	libFilePathRelease: ""
}
