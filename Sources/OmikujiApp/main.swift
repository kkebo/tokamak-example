import TokamakShim

struct OmikujiApp {}

extension OmikujiApp: App {
    var body: some Scene {
        WindowGroup("Counter Demo") {
            OmikujiView()
        }
    }
}

OmikujiApp.main()
