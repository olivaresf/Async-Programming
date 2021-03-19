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

let lowercaseNames: [String] = ["ninjawt", "eugene", "karen", "ryan"]
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (givenString: String) -> String in
    return givenString.capitalized
})
print(capitalizedNames)

let upperCasedNames = transform(originalStrings: lowercaseNames, closure: { (givenString: String) -> String in
    return givenString.uppercased()
})
print(upperCasedNames)
