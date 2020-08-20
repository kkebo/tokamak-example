import TokamakShim

struct OmikujiView {
    static let omikujis = [
        "大吉",
        "吉",
        "中吉",
        "小吉",
        "凶",
    ]
    @State var omikuji: String?
    @State var history = [String]()

    func draw() {
        self.omikuji = Self.omikujis.randomElement()
        if let omikuji = self.omikuji {
            self.history.append(omikuji)
        }
    }
}

extension OmikujiView: View {
    var body: some View {
        HStack {
            VStack {
                Button("おみくじを引く", action: self.draw)
                HStack {
                    if let omikuji = self.omikuji {
                        Text(omikuji)
                            .font(.title)
                        if omikuji == "大吉" {
                            Text("🎉")
                                .font(.title)
                        }
                    }
                }
            }
            .padding()
            ScrollView {
                Text("履歴")
                    .font(.headline)
                List(self.history.reversed(), id: \.self) {
                    Text($0)
                }
            }
            .padding()
        }
    }
}
