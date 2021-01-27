import Foundation

let lowercaseNames: [String] = [<# Insert 4 names #>]

func transform(originalStrings: [String], <#Declare a closure that accepts a String and returns a String#>) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = <#Pass singleString to the closure#>
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let capitalizedNames = transform(originalStrings: lowercaseNames, <#Declare a closure#>)
print(capitalizedNames)
