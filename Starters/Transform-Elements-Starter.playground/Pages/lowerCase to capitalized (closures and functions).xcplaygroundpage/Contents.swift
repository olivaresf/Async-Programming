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

let lowercaseNames: [String] = ["ryan", "allison", "amer", "alvaro"]

// Function signature:
// label, input and the output
// @selector(fernandoCapitalize(fernandoString:))
func fernandoCapitalize(_ fernandoString: String) -> String {
    return fernandoString.capitalized
}

func fernandoUppercase(fernandoString: String) -> String {
    return fernandoString.uppercased()
}

let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: fernandoCapitalize(_:))
print(capitalizedNames)

let uppercasedNames = transform(originalStrings: lowercaseNames,
                                closure: fernandoUppercase)
print(uppercasedNames)

// ---
// Passing a function with two parameters as a closure.

func doubleTransform(originalStrings: [String],
                     closure: (String, Int) -> String) -> [String] {
    return []
}

// First parameter = $0
// Second parameter = $1
func transformStringInt(originalString: String, _ originalInt: Int) -> String {
    return ""
}

doubleTransform(originalStrings: lowercaseNames,
                closure: transformStringInt(originalString:_:))
