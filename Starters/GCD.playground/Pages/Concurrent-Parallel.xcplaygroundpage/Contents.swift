import Foundation

let semaphore = DispatchSemaphore(value: 0) // How many people can access the resource?

// If the requests are not required to be executed in order.
// Concurrency
let url = URL(string: "https://google.com")
let request = URLRequest(url: url!)
let dataTask = URLSession.shared.dataTask(with: request) { (possibleData, _, _) in
    print(possibleData!)
    semaphore.signal()
}
dataTask.resume()

semaphore.wait() // Someone is using the resource

semaphore.wait()

print("All done")
