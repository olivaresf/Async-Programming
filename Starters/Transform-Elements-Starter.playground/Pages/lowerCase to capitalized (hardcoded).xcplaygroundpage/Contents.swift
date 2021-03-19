import Foundation

func transform(originalStrings: [String]) -> [String] {
    
    // Create a new array that will hold the transformed strings.
    var transformedStrings = [String]()
    
    // Iterate through the original strings.
    for originalString in originalStrings {
        // Transform each iterated string to a capitalized String.
        let transformedString = originalString.capitalized
        
        // Save the transformed string into array of transformed strings.
        transformedStrings.append(transformedString)
    }
    
    // Return array of transformed strings.
    return transformedStrings
}

let lowercaseNames: [String] = ["ninjawt", "eugene", "karen", "ryan"]
let capitalizedNames = transform(originalStrings: lowercaseNames)
print(capitalizedNames)
