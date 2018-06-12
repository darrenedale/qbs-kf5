import qbs 1.0

import "utils.js" as KF5Utils

Module {
	Depends {
		name: "cpp"
	}

	Depends {
		name: "Qt.core"
	}

	Probe {
		id: kf5Config
		property string includePath
		property string libPath
		property string version: ""
		property string prefix: ""
		
		configure: {
			includePath = KF5Utils.findKf5Path("include");
			libPath = KF5Utils.findKf5Path("lib");
			version = KF5Utils.kf5Version();
			prefix = KF5Utils.kf5Prefix();
			found = (undefined != includePath && undefined != libPath && "" != version);
		}
	}

	property string kf5ModuleName
	property int kf5Tier: 1
    
	property bool hasLibrary: true
	property bool isStaticLibrary: false

	readonly property string baseIncludePath: kf5Config.includePath
	readonly property string baseLibraryPath: kf5Config.libPath

	// this module's lib name (for linker)
    property string libNameForLinkerDebug
    property string libNameForLinkerRelease
    property string libNameForLinker: Qt.core.qtBuildVariant === "debug"
                                      ? libNameForLinkerDebug : libNameForLinkerRelease
    property string libFilePathDebug
    property string libFilePathRelease
    property string libFilePath: Qt.core.qtBuildVariant === "debug"
                                 ? libFilePathDebug : libFilePathRelease

    // other libs on which this module depends
    property stringList staticLibsDebug
    property stringList staticLibsRelease
    property stringList dynamicLibsDebug
    property stringList dynamicLibsRelease
    property stringList staticLibs: Qt.core.qtBuildVariant === "debug"
                                    ? staticLibsDebug : staticLibsRelease
    property stringList dynamicLibs: Qt.core.qtBuildVariant === "debug"
                                    ? dynamicLibsDebug : dynamicLibsRelease

    property stringList linkerFlagsDebug
    property stringList linkerFlagsRelease
    
   	version: kf5Config.version

	cpp.linkerFlags: Qt.core.qtBuildVariant === "debug"
            ? linkerFlagsDebug : linkerFlagsRelease

	cpp.includePaths: [baseIncludePath + "/KF5"]
	
    Properties {
        condition: hasLibrary
        cpp.staticLibraries: (isStaticLibrary ? [libFilePath] : []).concat(staticLibs)
        cpp.dynamicLibraries: (!isStaticLibrary ? [libFilePath] : []).concat(dynamicLibs)
    }
}
