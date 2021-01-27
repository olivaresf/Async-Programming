import Foundation

let url = URL(string: "https://swapi.dev/api/people/1")!
let request = URLRequest(url: url)

// What types does the closure accept?
let dataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
    print(data)
}

dataTask.resume()
