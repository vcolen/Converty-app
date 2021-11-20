//
//  Convert.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

struct Convert {
    
    static func convert(_ input: Double, from firstType: String, to secondType: String, measureType: String) -> Double {
        switch measureType {
        case "Temperature":
            switch firstType {
            case "Celsius":
                switch secondType {
                case "Fahrenheit":
                    return convertCelsiusToFahrenheit(input)
                case "Kelvin":
                    return convertCelsiusToKelvin(input)
                default:
                    return input
                }
                
            case "Fahrenheit":
                switch secondType {
                case "Celsius":
                    return convertFahrenheitToCelsius(input)
                case "Kelvin":
                    return convertFahrenheitToKelvin(input)
                default:
                    return input
                }
                
            case "Kelvin":
                switch secondType {
                case "Celsius":
                    return convertKelvinToCelsius(input)
                case "Fahrenheit":
                    return convertKelvinToFahrenheit(input)
                default:
                    return input
                }
                
            default:
                return input
            }
            
            //        case "Length":
            //            switch firstType {
            //            case "Meters":
            //
            //                case "Kilometers"
            //
            //                case "Feet"
            //
            //                case "Yards"
            //
            //                case "Miles"
            //            }
            
        default:
            return input
        }
    }
    
    //MARK: - Temperature Conversion
    
    static private func convertCelsiusToFahrenheit(_ value: Double) -> Double {
        value * 1.8 + 32
    }
    
    static private func convertCelsiusToKelvin(_ value: Double) -> Double {
        value + 273.15
    }
    
    
    static private func convertFahrenheitToCelsius(_ value: Double) -> Double {
        (value - 32) * 1.8
    }
    
    static private func convertFahrenheitToKelvin(_ value: Double) -> Double {
        (value - 32) * 1.8 + 273.15
    }
    
    
    static private func convertKelvinToCelsius(_ value: Double) -> Double {
        value - 273.15
    }
    
    static private func convertKelvinToFahrenheit(_ value: Double) -> Double {
        (value - 273) * 1.8 + 32
    }
    
    //MARK: - Length Conversion

    static private func convertMeterToKilometer(_ value: Double) -> Double {
        value * 0.001
    }
    
    static private func convertMeterToFeet(_ value: Double) -> Double {
        value * 3.28
    }
    
    static private func convertMeterToYard(_ value: Double) -> Double {
        value / 0.91
    }
    
    static private func convertMeterToMile(_ value: Double) -> Double {
        value / 1_609.34
    }
    
    
    static private func convertKilometerToMeter(_ value: Double) -> Double {
        value * 1000
    }
    
    static private func convertKilometerToFeet(_ value: Double) -> Double {
        value * 3280.84
    }
    
    static private func convertKilometerToYard(_ value: Double) -> Double {
        value * 1093.61
    }
    
    static private func convertKilometerToMile(_ value: Double) -> Double {
        value * 0.62
    }
    
    
    static private func convertFeetToMeter(_ value: Double) -> Double {
        value * 0.31
    }
    
    static private func convertFeetToKilometer(_ value: Double) -> Double {
        value * 0.0003
    }
    
    static private func convertFeetToYard(_ value: Double) -> Double {
        value * 0.33
    }
    
    static private func convertFeetToMile(_ value: Double) -> Double {
        value / 5_280
    }
    
    
    static private func convertYardToMeter(_ value: Double) -> Double {
        value * 0.91
    }
    
    static private func convertYardToKilometer(_ value: Double) -> Double {
        value * 0.00091
    }
    
    static private func convertYardToFeet(_ value: Double) -> Double {
        value * 3
    }
    
    static private func convertYardToMile(_ value: Double) -> Double {
        value / 1_760
    }
    
    
    
}


