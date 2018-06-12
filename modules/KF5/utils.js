var Process = require("qbs.Process");

// This is a quick hash together of something that works. It might be
// more elegant to subclass Process for this; but this does at least
// work reliably.


/// \brief Run `kf5-config` with provided args.
///
/// \param args (array) The command line arguments for kf5-config
///
/// This low-level function supports the other (high-level) functions.
/// You probably never need to use this - use the other high-level
/// functions instead.
///
/// Returns `undefined` on error or an array of lines of output on
/// success. The output is truncated at the first empty line found.
function execKf5Config(args) {
	var proc = new Process();

	// look for kf5-config if this is the first call
	if(undefined == this.kf5ConfigCmd) {
		var exitCode = proc.exec("which", ["kf5-config"], false);

		if(0 !== exitCode) {
			console.warn("can't find kf5-config (`which` failed with error code " + exitCode + ") - KF5 not available");
			return undefined;
		}

		// line does not include trailing LF
		this.kf5ConfigCmd = proc.readLine();

		if("" == this.kf5ConfigCmd) {
			console.warn("can't find kf5-config (`which` returned empty path) - KF5 not available");
			delete this.kf5ConfigCmd;
			return undefined;
		}
	}

	var exitCode = proc.exec(this.kf5ConfigCmd, args);

	if(0 != exitCode) {
		proc.close();
		console.warn("`kf5-config` failed with error code " + exitCode);
		return undefined;
	}

	var ret = [];

	do {
		// line does not include trailing LF
		var line = proc.readLine();

		if("" == line) {
			break;
		}

		ret.push(line);
	} while(true);

	proc.close();

	switch(ret.length) {
		case 0:
			return undefined;
			
		case 1:
			return ret[0];
	}
	
	return ret;
}


/// \brief Determine the path for a certain type of KF5 "object".
///
/// \param type (string) The type of object whose path is sought.
///
/// Call this to determine, e.g., the path to the KF5 includes.
/// Returns `undefined` on error.
///
/// \return (string) The path.
function findKf5Path(type) {
	var path = execKf5Config(["--path", type]);

	if(undefined == path) {
		console.warn("KF5 path \"" + type + "\" could not be determined");
		return undefined;
	}

	// TODO check for single string returned
	console.log("KF5 " + type + " path: " + path);
	return path;
}


/// \brief Determine the verion of KF5 in use.
///
/// Returns `undefined` on error.
///
/// \return (string) The version (e.g. "5.46.0").
function kf5Version() {
	var version = execKf5Config(["--kde-version"]);

	if(undefined == version) {
		console.warn("KF5 version could not be determined");
		return undefined;
	}

	// TODO check for single string returned
	console.log("KF5 version: " + version);
	return version;
}


/// \brief Determine the installation prefix of the KF5 version in use.
///
/// Returns `undefined` on error.
///
/// \return (string) The prefix (e.g. "/usr").
function kf5Prefix() {
	var prefix = execKf5Config(["--prefix"]);

	if(undefined == version) {
		console.warn("KF5 prefix could not be determined");
		return undefined;
	}

	// TODO check for single string returned
	console.log("KF5 prefix: " + prefix);
	return prefix;
}
