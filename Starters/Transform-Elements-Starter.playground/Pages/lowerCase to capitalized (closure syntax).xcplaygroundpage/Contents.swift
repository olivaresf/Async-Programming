import Foundation

func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = closure(originalString)
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = ["alejandro", "jon", "ting", "bharat"]

let filterByLength = lowercaseNames // ["alejandro"..]
    .map(\.capitalized) // ["Alejandro"]
    .filter { $0.count < 5 } // ["jon", "ting"]

// Full Syntax
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (givenOriginalString: String) -> String in
    return givenOriginalString.capitalized
})

// Trailing Closure Syntax
let capitalizedNames1 = transform(originalStrings: lowercaseNames) { (givenOriginalString: String) -> String in
    return givenOriginalString.capitalized
}

// Inferring input type
let capitalizedNames2 = transform(originalStrings: lowercaseNames) { (givenOriginalString) -> String in
    return givenOriginalString.capitalized
}

// Inferring output type
let capitalizedNames3 = transform(originalStrings: lowercaseNames) { (givenOriginalString) in
    return givenOriginalString.capitalized
}

// Shorthand argument name
let capitalizedNames4 = transform(originalStrings: lowercaseNames) { return $0.capitalized }

// Omitting return keyword
let capitalizedNames5 = transform(originalStrings: lowercaseNames) { $0.uppercased() }

// Keypaths: a way to access properties.
let capitalizedNames6 = lowercaseNames.map(\.capitalized)

let url = URL(string: "htps://hackingwithswift.com")

URLSession.shared.dataTask(with: url!,
                           completionHandler:
                            { data, _, error in
    
                                DispatchQueue.main.async {
                                    
                                    if let data = data {
                                        do {
                                            let decoder = JSONDecoder()
                                            //let decodedData = try decoder.decode(PoemData.self, from: data)
                                            // self.data = decodedData
                                            
                                        } catch {
                                            print ("Error! Something went wrong, yikes")
                                            
                                        }
                                    }
                                    
                                }
                            }
)
.resume()
