import qbs 1.0

import "../KF5Module.qbs" as KF5Module

KF5Module {
	kf5ModuleName: "KTextEditor"
	kf5Tier: 3

	Depends {
		name: "Qt"
		submodules: ["core", "widgets"]
	}

	Depends {
		name: "KF5"
		submodules: [
			"KParts",
			"KSyntaxHighlighting",
		]
	}

	staticLibsDebug: []
	staticLibsRelease: []
	dynamicLibsDebug: []
	
	// TODO probe for libgit2
	dynamicLibsRelease: [
		Qt.core.libPath + "/libQt5Core.so." + Qt.core.version,
		Qt.core.libPath + "/libQt5Widgets.so." + Qt.core.version,
		"git2"
	]
	
	linkerFlagsDebug: []
	linkerFlagsRelease: []
	libNameForLinkerDebug: "KTextEditor"
	libNameForLinkerRelease: "KTextEditor"
	libFilePathDebug: ""
	libFilePathRelease: baseLibraryPath + "libKF5TextEditor.so." + version

	cpp.includePaths: base.concat([baseIncludePath + "/KF5/KTextEditor"])
}
