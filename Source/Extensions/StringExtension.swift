//
//  StringExtension.swift
//  Pods
//
//  Created by JesseXu on 7/13/16.
//
//


import Foundation


extension String {
    
    public func trim() -> String {
        let re = NSMutableString(string: self)
        CFStringTrimWhitespace(re)
        
        return (re as String)
    }
    
}