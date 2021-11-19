//
//  Convert.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

struct Convert {
    
    static func convert(_ input: Double, from firstType: String, to secondType: String) -> Double {
        var output = 0.0
        if firstType == "Celsius" && secondType == "Fahrenheit" || firstType == "Fahrenheit" && secondType == "Celsius" {
           output = convertCelsiusAndFahrenheit(input, from: firstType, to: secondType)
        }
        
        return output
    }
    
   static private func convertCelsiusAndFahrenheit(_ input: Double, from firstType: String, to secondType: String) -> Double {
       var output = 0.0
       
       if firstType == "Celsius" {
           output = input * 1.8 + 32
       } else {
           output = (input - 32) * 5 / 9
       }
       
       return output
    }
    
    private func convertCelsiusAndKelvin() {
        
    }
    
    private func convertFahrenheitAndKelvin() {
        
    }
}
