import JavaScriptKit
import TokamakDOM

let document = JSObjectRef.global.document.object!

let rootElement = document.createElement!("div").object!
let renderer = DOMRenderer(OmikujiView(), rootElement)

_ = document.body.object!.appendChild!(rootElement)

withExtendedLifetime(renderer) {}
