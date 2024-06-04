import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    let window = NSApplication.shared.windows.first
    window?.minSize = NSSize(width: 800, height: 600)
    window?.maxSize = NSSize(width: 1200, height: 800)
    return true
  }
}
