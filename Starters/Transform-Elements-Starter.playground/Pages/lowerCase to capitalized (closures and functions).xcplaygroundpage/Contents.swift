import Foundation

let lowercaseNames: [String] = [<# Insert 4 names #>]

func transform(givenStrings: [String], <#Declare a closure that accepts a String and returns a String#>) -> [String] {
    
    var transformedStrings = [String]()
    for singleString in givenStrings {
        let transformedString = <#Pass singleString to the closure#>
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

<#Create a function that accepts a String, capitalizes it and returns it#>

let capitalizedNames = transform(strings: lowercaseNames, <#Pass the function you created#>)
print(capitalizedNames)
