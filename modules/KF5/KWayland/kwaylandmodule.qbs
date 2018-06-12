import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KWayland"

	Depends {
		name: "KF5"
		submodules: ["KWaylandCore", "KWaylandGui"]
	}

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
