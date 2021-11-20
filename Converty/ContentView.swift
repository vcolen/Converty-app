//
//  ContentView.swift
//  Converty
//
//  Created by Victor Colen on 19/11/21.
//

import SwiftUI

struct ContentView: View {
    let measureTypes = ["Temperature", "Length", "Time", "Volume"]
    let units = [
        "Temperature" :
            [
                "Celsius",
                "Fahrenheit",
                "Kelvin"
            ],
        
        "Length" :
            [
                "Meters",
                "Kilometers",
                "Feet",
                "Yards",
                "Miles"
            ],
        
        "Time" :
            [
                "Seconds",
                "Minutes",
                "Hours",
                "Days"
            ],
        
        "Volume" :
            [
                "Milliliters",
                "Liters",
                "Cups",
                "Pints",
                "Gallons"
            ]
    ]
    
    @State private var chosenType = "Temperature"
    @State private var rootUnit = "Kelvin"
    @State private var chosenUnit = "Celsius"
    @State private var inputMeasure = 0.0
    
    var chosenTypeMeasures: [String] {
        units[chosenType]!
    }
    
    var outputMeasure: Double {
        Convert.convert(inputMeasure, from: rootUnit, to: chosenUnit, measureType: chosenType)
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Conversion type", selection: $chosenType) {
                        ForEach(measureTypes, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Type of measure you want to convert")
                }
                
                Section {
                    Picker("From", selection: $rootUnit) {
                        ForEach(chosenTypeMeasures, id: \.self) {
                            Text($0)
                        }
                    }
                    Picker("To", selection: $chosenUnit) {
                        ForEach(chosenTypeMeasures, id: \.self) {
                            Text($0)
                        }
                    }
                }
                

                
                Section {
                    TextField("Measure", value: $inputMeasure, format: .number
                    )
                        .keyboardType(.decimalPad)
                } header: {
                    Text("Input in \(rootUnit)")
                }
                
                Section {
                    Text(outputMeasure.decimalPoints(2))
                } header: {
                    Text("Output in \(chosenUnit)")
                }
            }
            .navigationTitle("Converty")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
