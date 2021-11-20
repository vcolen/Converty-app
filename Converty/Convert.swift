//
//  Convert.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import Foundation

struct Convert {
    
    private enum Temp: String {
        case celsius = "Celsius"
        case fahrenheit = "Fahrenheit"
        case kelvin = "Kelvin"
    }
    
    private enum Len: String {
        case meters = "Meters"
        case kilometers = "Kilometers"
        case feet = "Feet"
        case yards = "Yards"
        case miles = "Miles"
    }
    
    private enum Time: String {
        case seconds = "Seconds"
        case minutes = "Minutes"
        case hours = "Hours"
        case days = "Days"
    }
    
    private enum Vol: String {
        case milliliters = "Milliliters"
        case liters = "Liters"
        case cups = "Cups"
        case pints = "Pints"
        case gallons = "Gallons"
    }
    
    static func convert(_ input: Double, from firstType: String, to secondType: String, measureType: String) -> Double {
        switch measureType {
        case "Temperature":
            switch firstType {
            case Temp.celsius.rawValue:
                switch secondType {
                case Temp.kelvin.rawValue:
                    return convertCelsiusToFahrenheit(input)
                case Temp.kelvin.rawValue:
                    return convertCelsiusToKelvin(input)
                default:
                    return input
                }
                
            case Temp.fahrenheit.rawValue:
                switch secondType {
                case Temp.celsius.rawValue:
                    return convertFahrenheitToCelsius(input)
                case Temp.kelvin.rawValue:
                    return convertFahrenheitToKelvin(input)
                default:
                    return input
                }
                
            case Temp.kelvin.rawValue:
                switch secondType {
                case Temp.celsius.rawValue:
                    return convertKelvinToCelsius(input)
                case Temp.fahrenheit.rawValue:
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
            
        case "Time":
            switch firstType {
            case "Seconds":
                switch secondType {
                case "Minutes":
                    return convertSecondsToMinutes(input)
                case "Hours":
                    return convertSecondsToHours(input)
                case "Days":
                    return convertSecondsToDays(input)
                default:
                    return input
                }
                
            case "Minutes":
                switch secondType {
                case "Seconds":
                    return convertMinutesToSeconds(input)
                case "Hours":
                    return convertMinutesToHours(input)
                case "Days":
                    return convertMinutesToDays(input)
                default:
                    return input
                }
                
            case "Hours":
                switch secondType {
                case "Seconds":
                    return convertHoursToSeconds(input)
                case "Minutes":
                    return convertHoursToMinutes(input)
                case "Days":
                    return convertHoursToDays(input)
                default:
                    return input
                }
                
            case "Days":
                switch secondType {
                case "Seconds":
                    return convertDaysToSeconds(input)
                case "Minutes":
                    return convertDaysToMinutes(input)
                case "Hours":
                    return convertDaysToHours(input)
                default:
                    return input
                }
                
            default:
                return input
            }
            
        case "Volume":
            switch firstType {
            case "Milliliters":
                switch secondType {
                case "Liters":
                    return convertMillilitersToLiters(input)
                case "Cups":
                    return convertMillilitersToCups(input)
                case "Pints":
                    return convertMillilitersToPints(input)
                case "Gallons":
                    return convertMillilitersToGallons(input)
                default:
                    return input
                }
                
            case "Liters":
                switch secondType {
                case "Milliliters":
                    return convertLitersToMilliliters(input)
                case "Cups":
                    return convertLitersToCups(input)
                case "Pints":
                    return convertLitersToPints(input)
                case "Gallons":
                    return convertLitersToGallons(input)
                default:
                    return input
                }
                
            case Vol.cups.rawValue:
                switch secondType {
                case Vol.milliliters.rawValue:
                    return convertCupsToMilliliters(input)
                case Vol.liters.rawValue:
                    return convertCupsToLiters(input)
                case Vol.pints.rawValue:
                    return convertCupsToPints(input)
                case Vol.gallons.rawValue:
                    return convertCupsToGallons(input)
                default:
                    return input
                }
                
            case Vol.pints.rawValue:
                switch secondType {
                case Vol.milliliters.rawValue:
                    return convertPintsToMilliliters(input)
                case Vol.liters.rawValue:
                    return convertPintsToLiters(input)
                case Vol.cups.rawValue:
                    return convertPintsToCups(input)
                case Vol.gallons.rawValue:
                    return convertPintsToGallons(input)
                default:
                    return input
                }
                
            case Vol.gallons.rawValue:
                switch secondType {
                case Vol.milliliters.rawValue:
                    return convertGallonsToMilliliters(input)
                case Vol.liters.rawValue:
                    return convertGallonsToLiters(input)
                case Vol.cups.rawValue:
                    return convertGallonsToCups(input)
                case Vol.pints.rawValue:
                    return convertGallonsToPints(input)
                default:
                    return input
                }
                
            default:
                return input
            }

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
    
    
    //MARK: - Volume Conversion
    
    static private func convertMillilitersToLiters(_ value: Double) -> Double {
        value * 1000
    }
    
    static private func convertMillilitersToCups(_ value: Double) -> Double {
        value / 237
    }
    
    static private func convertMillilitersToPints(_ value: Double) -> Double {
        value * 473
    }
    
    static private func convertMillilitersToGallons(_ value: Double) -> Double {
        value * 3785
    }
    
    
    static private func convertLitersToMilliliters(_ value: Double) -> Double {
        value / 1000
    }
    
    static private func convertLitersToCups(_ value: Double) -> Double {
        value * 4.23
    }
    
    static private func convertLitersToPints(_ value: Double) -> Double {
        value * 2.11
    }
    
    static private func convertLitersToGallons(_ value: Double) -> Double {
        value / 3.79
    }
    
    
    static private func convertCupsToMilliliters(_ value: Double) -> Double {
        value * 237
    }
    
    static private func convertCupsToLiters(_ value: Double) -> Double {
        value / 4.2
    }
    
    static private func convertCupsToPints(_ value: Double) -> Double {
        value / 2
    }
    
    static private func convertCupsToGallons(_ value: Double) -> Double {
        value / 16
    }
    
    
    static private func convertPintsToMilliliters(_ value: Double) -> Double {
        value * 473
    }
    
    static private func convertPintsToLiters(_ value: Double) -> Double {
        value / 2.11
    }
    
    static private func convertPintsToCups(_ value: Double) -> Double {
        value * 2
    }
    
    static private func convertPintsToGallons(_ value: Double) -> Double {
        value / 8
    }
    
    
    static private func convertGallonsToMilliliters(_ value: Double) -> Double {
        value * 3785
    }
    
    static private func convertGallonsToLiters(_ value: Double) -> Double {
        value * 3.79
    }
    
    static private func convertGallonsToCups(_ value: Double) -> Double {
        value * 16
    }
    
    static private func convertGallonsToPints(_ value: Double) -> Double {
        value * 8
    }
    
}
