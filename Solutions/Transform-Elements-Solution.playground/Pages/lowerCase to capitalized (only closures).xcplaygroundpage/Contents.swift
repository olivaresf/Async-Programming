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
let capitalizedNames = transform(originalStrings: lowercaseNames,
                                 closure:
                                    { (firstString: String) -> String in
                                        return firstString.capitalized
                                    })

let uppercaseNames = transform(originalStrings: lowercaseNames,
                                 closure:
                                    { (firstString: String) -> String in
                                        return firstString.uppercased()
                                    })

print(capitalizedNames)
print(uppercaseNames)
