import Cocoa
import Settings


	func applicationWillFinishLaunching(_ notification: Notification) {
		window.orderOut(self)
	}

	func applicationDidFinishLaunching(_ notification: Notification) {
	}

	@IBAction private func switchStyle(_ sender: Any) {
		self.preferencesStyle = (self.preferencesStyle == .segmentedControl)
        	? .toolbarItems
			: .segmentedControl
		relaunch()
	}
}

private func relaunch() {
	let appBundleIdentifier = Bundle.main.bundleIdentifier!
	NSWorkspace.shared.launchApplication(
		withBundleIdentifier: appBundleIdentifier,
		options: NSWorkspace.LaunchOptions.newInstance,
		additionalEventParamDescriptor: nil,
		launchIdentifier: nil)
	NSApp.terminate(nil)
}
