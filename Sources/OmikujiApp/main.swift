import TokamakShim

struct OmikujiApp {}

extension OmikujiApp: App {
    var body: some Scene {
        WindowGroup("Omikuji") {
            OmikujiView()
        }
    }
}

OmikujiApp.main()
