import TokamakShim

struct OmikujiView {
    static let omikujis = [
        "大吉",
        "吉",
        "中吉",
        "小吉",
        "凶",
    ]
    @State var history = [String]()

    func draw() {
        if let omikuji = Self.omikujis.randomElement() {
            self.history.append(omikuji)
        }
    }
}

extension OmikujiView: View {
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Button("おみくじを引く", action: self.draw)
                HStack {
                    if let omikuji = self.history.last {
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
            List {
                Section(header: Text("履歴").font(.headline)) {
                    ForEach(self.history.reversed(), id: \.self) {
                        Text($0)
                    }
                }
            }
            .padding()
        }
    }
}
