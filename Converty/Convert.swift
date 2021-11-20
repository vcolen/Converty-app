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
            
        case "Length":
            switch firstType {
            case "Meters":
                switch secondType {
                case "Kilometers":
                    return convertMetersToKilometers(input)
                case "Feet":
                    return convertMetersToFeet(input)
                case "Yards":
                    return convertMetersToYards(input)
                case "Miles":
                    return convertMetersToMiles(input)
                default:
                    return input
                }
                
            case "Kilometers":
                switch secondType {
                case "Meters":
                    return convertKilometersToMeters(input)
                case "Feet":
                    return convertKilometersToFeet(input)
                case "Yards":
                    return convertKilometersToYards(input)
                case "Miles":
                    return convertKilometersToMiles(input)
                default:
                    return input
                }
                
            case "Feet":
                switch secondType {
                case "Meters":
                    return convertFeetToMeters(input)
                case "Kilometers":
                    return convertFeetToKilometers(input)
                case "Yards":
                    return convertFeetToYards(input)
                case "Miles":
                    return convertFeetToMiles(input)
                default:
                    return input
                }
                
            case "Yards":
                switch secondType {
                case "Meters":
                    return convertYardsToMeters(input)
                case "Kilometers":
                    return convertYardsToKilometers(input)
                case "Feet":
                    return convertYardsToFeet(input)
                case "Miles":
                    return convertYardsToMiles(input)
                default:
                    return input
                }
                
            case "Miles":
                switch secondType {
                case "Meters":
                    return convertMilesToMeters(input)
                case "Kilometers":
                    return convertMilesToKilometers(input)
                case "Feet":
                    return convertMilesToFeet(input)
                case "Yards":
                    return convertMilesToYards(input)
                default:
                    return input
                }
                
            default:
                return input
            }
            
//        case "Time":
//            switch firstType {
//                case "Seconds"
//
//                case "Minutes"
//
//                case "Hours"
//
//                case "Days"
//
//
//            }
            
//            "Time" :
//                [
//                    "Seconds",
//                    "Minutes",
//                    "Hours",
//                    "Days"
//                ],
            
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
    
    static private func convertMetersToKilometers(_ value: Double) -> Double {
        value * 0.001
    }
    
    static private func convertMetersToFeet(_ value: Double) -> Double {
        value * 3.28
    }
    
    static private func convertMetersToYards(_ value: Double) -> Double {
        value / 0.91
    }
    
    static private func convertMetersToMiles(_ value: Double) -> Double {
        value / 1_609.34
    }
    
    
    static private func convertKilometersToMeters(_ value: Double) -> Double {
        value * 1000
    }
    
    static private func convertKilometersToFeet(_ value: Double) -> Double {
        value * 3280.84
    }
    
    static private func convertKilometersToYards(_ value: Double) -> Double {
        value * 1093.61
    }
    
    static private func convertKilometersToMiles(_ value: Double) -> Double {
        value * 0.62
    }
    
    
    static private func convertFeetToMeters(_ value: Double) -> Double {
        value * 0.31
    }
    
    static private func convertFeetToKilometers(_ value: Double) -> Double {
        value * 0.0003
    }
    
    static private func convertFeetToYards(_ value: Double) -> Double {
        value * 0.33
    }
    
    static private func convertFeetToMiles(_ value: Double) -> Double {
        value / 5_280
    }
    
    
    static private func convertYardsToMeters(_ value: Double) -> Double {
        value * 0.91
    }
    
    static private func convertYardsToKilometers(_ value: Double) -> Double {
        value * 0.00091
    }
    
    static private func convertYardsToFeet(_ value: Double) -> Double {
        value * 3
    }
    
    static private func convertYardsToMiles(_ value: Double) -> Double {
        value / 1_760
    }
    
    
    static private func convertMilesToMeters(_ value: Double) -> Double {
        value * 1_609.34
    }
    
    static private func convertMilesToKilometers(_ value: Double) -> Double {
        value * 1.61
    }
    
    static private func convertMilesToFeet(_ value: Double) -> Double {
        value * 5280
    }
    
    static private func convertMilesToYards(_ value: Double) -> Double {
        value * 1_760
    }
    
    //MARK: - Time Conversion
    
    static private func convertSecondsToMinutes(_ value: Double) -> Double {
        value / 60
    }
    
    static private func convertSecondsToHours(_ value: Double) -> Double {
        value / 3_600
    }
    
    static private func convertSecondsToDays(_ value: Double) -> Double {
        value / (24 * 3_600)
    }
    
    
    static private func convertMinutesToSeconds(_ value: Double) -> Double {
        value * 60
    }
    
    static private func convertMinutesToHours(_ value: Double) -> Double {
        value / 60
    }
    
    static private func convertMinutesToDays(_ value: Double) -> Double {
        value / (24 * 60)
    }
    
    
    static private func convertHoursToSeconds(_ value: Double) -> Double {
        value * 3_600
    }
    
    static private func convertHoursToMinutes(_ value: Double) -> Double {
        value  * 60
    }
    
    static private func convertHoursToDays(_ value: Double) -> Double {
        value / 24
    }
    
    
    static private func convertDaysToSeconds(_ value: Double) -> Double {
        value * 24 * 3_600
    }
    
    static private func convertDaysToMinutes(_ value: Double) -> Double {
        value * 24 * 60
    }
    
    static private func convertDaysToHours(_ value: Double) -> Double {
        value * 24
    }
    
}




