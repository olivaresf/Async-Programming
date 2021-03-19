import Foundation

// This is `.map`
// Does this function belong to a class/struct?
func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = closure(originalString)
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames = ["ninjawt", "eugene", "karen", "ryan"]

// Full Syntax
let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: { (givenString: String) -> String in
                                    return givenString.capitalized
                                 })

// Trailing Closure Syntax
let capitalizedNames2 = transform(originalStrings: lowercaseNames) { (givenString: String) -> String in
    return givenString.capitalized
}

// Inferring input type
let capitalizedNames3 = transform(originalStrings: lowercaseNames) { givenString -> String in
    return givenString.capitalized
}

// Inferring output type
let capitalizedNames4 = transform(originalStrings: lowercaseNames) { givenString in
    return givenString.capitalized
}

// Shorthand argument name
// $ is a protected character
// 0 means the first parameter/argument
let capitalizedNames5 = transform(originalStrings: lowercaseNames) {
    return $0.capitalized
}

// Omitting return keyword
// { $0.name }
let capitalizedNames6 = transform(originalStrings: lowercaseNames) { $0.capitalized }

// Keypaths (Swift 5.1)
// A quick way to access a struct/class' properties.
// employees.map(\.names)
let capitalizedNames7 = lowercaseNames.map(\.capitalized)

