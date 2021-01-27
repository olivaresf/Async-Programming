import Foundation

func transform(originalStrings: [String],
               closure: <#Declare a closure that accepts a String and returns a String#>) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = <#Call closure instead of originalString.capitalized#>
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = [<# Insert 4 names #>]

<#Create a function named "\(yourName)Capitalize" that accepts a String, capitalizes it and returns it#>


let capitalizedNames = transform(originalStrings: lowercaseNames, closure: <#Pass the function you created#>)
print(capitalizedNames)
