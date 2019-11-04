import Cocoa

@NSApplicationMain class AppDelegate: NSObject, NSApplicationDelegate
{
    @IBOutlet weak var window: NSWindow!
    
    func applicationDidFinishLaunching (_ notification: Notification )
    {}
    
    func applicationWillTerminate( _ notification: Notification )
    {}
}
