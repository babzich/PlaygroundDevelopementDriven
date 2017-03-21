//: [Previous](@previous)

import PlaygroundSupport
@testable import DemoFramework

let controller = ViewController()
let (parent, _) = playgroundControllers(device: .phone4inch, orientation: .portrait, child: controller)
PlaygroundPage.current.liveView = parent.view

//: [Next](@next)
