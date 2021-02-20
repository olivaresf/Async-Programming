import Foundation

func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings { // originalStrings = ["ryan", "allison", "amer", "alvaro"]
        let transformedString = closure(originalString) // originalString = "ryan"
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = ["ryan", "allison", "amer", "alvaro"]
let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure: { (givenString: String) -> String in
                                                // ?? = "ryan"
                                                // givenString = "ryan"
                                                return givenString.capitalized
                                            }
)
print(capitalizedNames)
