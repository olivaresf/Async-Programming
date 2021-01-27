import Foundation

let names: [String] = [<# Insert 4 names #>]

func transform(givenStrings: [String], <#Declare a closure that accepts a String and returns a String#>) -> [String] {
    
    var transformedStrings = [String]()
    for singleString in strings {
        let transformedString = <#Pass singleString to the closure#>
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let capitalizedNames = transform(strings: names, <#Declare a closure#>)
print(capitalizedNames)
