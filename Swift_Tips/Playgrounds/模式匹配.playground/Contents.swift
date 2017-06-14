//: Playground - noun: a place where people can play

import UIKit

func ~= (pattern: NSRegularExpression, input: String) -> Bool {
    print(input)
    return pattern.numberOfMatches(in: input, options: [], range: NSMakeRange(0, input.characters.count)) > 0
}

prefix operator ~/

prefix func ~/(pattern: String) -> NSRegularExpression? {
    var reg: NSRegularExpression?
    do {
        reg = try NSRegularExpression(pattern: pattern, options: [])
    } catch _ {
        
    }
    return reg
}


let contact = ("http://onevcat.com", "onev@onevcat.com")
let mailRe: NSRegularExpression?
let siteRe: NSRegularExpression?

mailRe = ~/"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"

siteRe = ~/"^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"

switch contact {
case (siteRe!, mailRe!): print("同时拥有")
case (_, mailRe!): print("拥有邮箱")
case (siteRe!, _): print("拥有网站")
default:
    print("nothing")
}

