import Foundation

func transform(originalStrings: [String],
               closure: (String) -> (String)) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = closure(originalString)
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = ["ninjawt", "eugene", "karen", "ryan"]

// Signature of the function
// fernandoCapitalize(myString:) -> String
func fernandoCapitalize(myString: String) -> String {
    return myString.capitalized
}

func fernandoUppercase(myString: String) -> String {
    return myString.uppercased()
}

let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: fernandoUppercase(myString:))

let uppercasedNames = transform(originalStrings: lowercaseNames,
                                closure: fernandoUppercase(myString:))
print(capitalizedNames)
print(uppercasedNames)
