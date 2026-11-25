import AppKit

// A tiny macOS program that opens a window saying "hi from swift".
// Clicking the "Later" button closes the window and ends the program.

final class DialogWindowController: NSObject {
    private var window: NSWindow!

    @objc func handleLaterButton() {
        window.close()
        NSApplication.shared.terminate(nil)
    }

    func show() {
        let content = NSView(frame: NSRect(x: 0, y: 0, width: 420, height: 240))

        let label = NSTextField(labelWithString: "hi from swift")
        label.frame = NSRect(x: 20, y: 140, width: 380, height: 40)
        label.alignment = .center
        label.font = .systemFont(ofSize: 28, weight: .semibold)
        content.addSubview(label)

        let button = NSButton(title: "Later", target: self, action: #selector(handleLaterButton))
        button.frame = NSRect(x: 160, y: 60, width: 100, height: 36)
        button.bezelStyle = .rounded
        content.addSubview(button)

        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 420, height: 240),
            styleMask: [.titled, .closable],
            backing: .buffered,
            defer: false
        )
        window.contentView = content
        window.title = "hi from swift"
        window.center()
        window.makeKeyAndOrderFront(nil)

        self.window = window
    }
}

let app = NSApplication.shared
app.setActivationPolicy(.regular)
let controller = DialogWindowController()
controller.show()
app.run()
