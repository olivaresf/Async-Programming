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

// Full Syntax
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (firstString: String) -> String in
    return firstString.uppercased()
})

// Trailing closure syntax
let capitalizedNames1 = transform(originalStrings: lowercaseNames) { (firstString: String) -> String in
    return firstString.capitalized
}

// Inferring input type
let capitalizedNames2 = transform(originalStrings: lowercaseNames) { (firstString) -> String in
    return firstString.capitalized
}

// Inferring output type
let capitalizedNames3 = transform(originalStrings: lowercaseNames) { firstString in
    return firstString.capitalized
}

// Shorthand argument name
let capitalizedNames4 = transform(originalStrings: lowercaseNames) {
    // $0 means the first parameter
    return $0.capitalized
}

// Omitting return keyword
let capitalizedNames5 = transform(originalStrings: lowercaseNames) { $0.capitalized }

// Keypaths
let capitalizedNames6 = lowercaseNames.map(\.capitalized)

