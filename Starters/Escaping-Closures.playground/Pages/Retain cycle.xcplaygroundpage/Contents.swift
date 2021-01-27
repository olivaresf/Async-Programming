import Foundation

class NetworkManager {
    var baseURL: String = "https://swapi.dev/api"
    var latestDataTask: URLSessionDataTask?
    
    func request(person: Int, completion: @escaping (Data?) -> Void) {
        let url = URL(string: "https://swapi.dev/api/people/1")!
        let request = URLRequest(url: url)

        latestDataTask = URLSession.shared.dataTask(with: request) { (data, response, error) in
            print("Received \(data) from \(self.latestDataTask?.taskIdentifier)")
            completion(data)
        }

        latestDataTask?.resume()
    }
}

let manager = NetworkManager()
manager.request(person: 1) { (data: Data?) in
    print(data as Any)
}
