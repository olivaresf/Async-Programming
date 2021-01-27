import Foundation

class NetworkManager {
    var baseURL: String = "https://swapi.dev/api"
    var latestDataTask: URLSessionDataTask?
    
    func request(person: Int, completion: (Data?) -> Void) {
        let url = URL(string: "https://swapi.dev/api/people/1")!
        let request = URLRequest(url: url)

        // What types does the closure accept?
        latestDataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            <#print("Received \(data) from \(baseURL)")#>
        }

        latestDataTask?.resume()
    }
}
