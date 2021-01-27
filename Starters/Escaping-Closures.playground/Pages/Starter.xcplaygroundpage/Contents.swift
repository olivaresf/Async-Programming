import Foundation

let url = URL(string: "https://swapi.dev/api/people/1")!
let request = URLRequest(url: url)
let dataTask = URLSession.shared.dataTask(with: request, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)

dataTask.resume()
