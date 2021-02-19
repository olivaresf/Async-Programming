import Foundation

func transform(originalStrings: [String],
               closure: (String) -> String) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings { // originalStrings[0] = "alejandro"
        let transformedString = closure(originalString) // originalString = "alejando"
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = ["alejandro", "jon", "ting", "bharat"]
let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure:
                                    { (givenOriginalString: String) -> String in
                                        // originalString from line 7 is going to be passed to the closure implemented on line 16.
                                        // How do we call `originalString` here?
                                        // givenOriginalString = "alejandro"
                                        return givenOriginalString.capitalized
                                    })
print(capitalizedNames)

let uppercasedNames = transform(originalStrings: lowercaseNames,
                                 closure:
                                    { (givenOriginalString: String) -> String in
                                        // originalString from line 7 is going to be passed to the closure implemented on line 16.
                                        // How do we call `originalString` here?
                                        // givenOriginalString = "alejandro"
                                        return givenOriginalString.uppercased()
                                    })
print(uppercasedNames)
