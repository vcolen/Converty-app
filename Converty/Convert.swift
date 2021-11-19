//
//  Convert.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

struct Convert {
    
    static func convert(_ input: Double, from firstType: String, to secondType: String) -> Double {
        
        
        if firstType == "Celsius" && secondType == "Fahrenheit" || firstType == "Fahrenheit" && secondType == "Celsius" {
            return convertCelsiusAndFahrenheit(input, from: firstType, to: secondType)
        } else if firstType == "Celsius" && secondType == "Kelvin" || firstType == "Kelvin" && secondType == "Celsius" {
            return convertCelsiusAndKelvin(input, from: firstType, to: secondType)
        } else if firstType == "Fahrenheit" && secondType == "Kelvin" || firstType == "Kelvin" && secondType == "Fahrenheit" {
            return convertFahrenheitAndKelvin(input, from: firstType, to: secondType)
        } else {
            return input
        }
    }
    
    static private func convertCelsiusAndFahrenheit(_ input: Double, from firstType: String, to secondType: String) -> Double {
        
        if firstType == "Celsius" {
            return input * 1.8 + 32
        } else {
            return (input - 32) * 1.8
        }
    }
    
    static private func convertCelsiusAndKelvin(_ input: Double, from firstType: String, to secondType: String) -> Double {
        
        if firstType == "Celsius" {
            return input + 273.15
        } else {
            return input - 273.15
        }
    }
    
    static private func convertFahrenheitAndKelvin(_ input: Double, from firstType: String, to secondType: String) -> Double {
        
        if firstType == "Fahrenheit" {
            return (input - 32) * 1.8 + 273.15
        } else {
            return   (input - 273) * 1.8 + 32
        }
    }
}
