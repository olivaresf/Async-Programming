import Foundation

func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        // closure = fernandoCapitalize(fernandoString:)
        // closure(originalString) = fernandoCapitalize(fernandoString: originalString)
        let transformedString = closure(originalString)
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

// `lowercaseNames`
let lowercaseNames: [String] = ["alejandro", "jon", "ting", "bharat"]

// Signature
// Type: (fernandoString: String) -> String
func fernandoCapitalize(_ fernandoString: ) -> String {
    return fernandoString.capitalized
}

func fernandoCapitalize() -> String {
    return "Fernando!"
}

func fernandoUppercase(fernandoString: String) -> String {
    return fernandoString.uppercased()
}

let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: fernandoCapitalize)
print(capitalizedNames)

let uppercasedNames = transform(originalStrings: lowercaseNames,
                                closure: fernandoUppercase(fernandoString:))
print(uppercasedNames)
