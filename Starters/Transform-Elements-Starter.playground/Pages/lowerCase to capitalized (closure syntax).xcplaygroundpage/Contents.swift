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

// Full Syntax
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: { (givenString: String) -> String in
    return givenString.capitalized
})

// Trailing Closure Syntax
let capitalizedNames1 = transform(originalStrings: lowercaseNames) { (givenString: String) -> String in
    return givenString.capitalized
}

// Inferring input type
let capitalizedNames2 = transform(originalStrings: lowercaseNames) { givenString -> String in
    return givenString.capitalized
}

// Inferring output type
let capitalizedNames3 = transform(originalStrings: lowercaseNames) { givenString in
    return givenString.capitalized
}

// Shorthand argument name
let capitalizedNames4 = transform(originalStrings: lowercaseNames) {
    return $0.capitalized
}

// Omitting return keyword
let capitalizedNames5 = transform(originalStrings: lowercaseNames) { $0.capitalized }

// Keypaths - a way to access a property (let/var)
// Example: [Employee] -> [String] // Strings represent the employee names
// let employeeNames = employees.map(\.name)
let capitalizedNames6 = lowercaseNames.map(\.capitalized)

// doSomething(key1: \.keypath1, key2: \.keypath2)
