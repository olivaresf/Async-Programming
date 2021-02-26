import Foundation

// Fernando's razor: The main thread is usually the right one.

// Current thread: Main thread
let 👩🏿‍🎤 = URL(string: "https://swapi.dev/api/people/1")!
let 👩🏻‍🎤 = URLRequest(url: 👩🏿‍🎤)
let 👨🏽‍🚀 = DispatchWorkItem

// 👨🏻‍🎨
{
    // Closure is going to get executed until we have data, response and/or error
    // We can only get data when the URL response is received by the iPhone
    print("👨🏻‍🎨 Data returned") // Painter
}

// DispatchQueue.global(qos: .background).sync(execute: 👨🏽‍🚀)
DispatchQueue.main.sync(execute: 👨🏽‍🚀)

print("🧑🏿‍🎤")
