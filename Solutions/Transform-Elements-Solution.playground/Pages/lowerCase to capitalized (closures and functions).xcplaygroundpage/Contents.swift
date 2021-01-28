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

let lowercaseNames: [String] = ["fernando", "juan", "lydia", "heather"]

// Identifier for this function
// label(identifiers)
// Signature: fernandoCapitalize(fernandoString:)
// Type: (String) -> String
func fernandoCapitalize(_ fernandoString: String) -> String {
    return fernandoString.capitalized
}

// Identifier for this function
// Signature: fernandoCapitalize()
// Type: (Void) -> String
func fernandoCapitalize() -> String {
    return ""
}

// Signature: fernandoCapitalize(aString:anotherString:)
// Type: (String, String) -> String
func fernandoCapitalize(aString: String, anotherString: String) -> String {
    return ""
}

let nameS: String = "23"
let nameI: Int = 23

let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: fernandoCapitalize(_:))
print(capitalizedNames)
