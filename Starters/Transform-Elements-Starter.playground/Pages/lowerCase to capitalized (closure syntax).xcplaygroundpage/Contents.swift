import Foundation

func transform(originalStrings: [String],
               closure: <#Declare a closure that accepts a String and returns a String#>) -> [String] {
    
    var transformedStrings = [String]()
    for originalString in originalStrings {
        let transformedString = <#Pass singleString to the closure#>
        transformedStrings.append(transformedString)
    }
    
    return transformedStrings
}

let lowercaseNames: [String] = [<# Insert 4 names #>]
let capitalizedNames = transform(originalStrings: lowercaseNames, closure: <#Declare a closure#>)
print(capitalizedNames)


<#Full Syntax#>

<#Trailing Closure Syntax#>

<#Inferring input type#>

<#Inferring output type#>

<#Shorthand argument name#>

<#Omitting return keyword#>

<#Keypaths#>
