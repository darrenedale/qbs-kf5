import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KIO"
	kf5Tier: 3

	Depends {
		name: "KF5"
		submodules: [
			"KIOCore",
			"KIOWidgets",
			"KIOFileWidgets",
			"KIONTLM",
		]
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
