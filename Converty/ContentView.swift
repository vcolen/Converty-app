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
        "Temperature" : [
            "Celsius",
            "Fahrenheit",
            "Kelvin"
        ],
        "Length" : [
            "Meters",
            "Kilometers",
            "Feet",
            "Yards",
            "Miles"
        ],
        "Time" : [
            "Seconds",
            "Minutes",
            "Hours",
            "Days"
        ],
        "Volume" : [
            "Milliliters",
            "Liters",
            "Cups",
            "Pints",
            "Gallons"
        ]
    ]
    
    @State private var chosenType = "Temperature"
    
    var chosenTypeMeasures: [String] {
        return units[chosenType]!
    }
    
    @State private var rootUnit = "Kelvin"
    @State private var desiredUnit = "Celsius"
    
    @State private var inputMeasure = 0.0
    
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
                    Picker("Unit", selection: $rootUnit) {
                        ForEach(chosenTypeMeasures, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Unit you want to convert from")
                }
                
                Section {
                    Picker("Unit", selection: $desiredUnit) {
                        ForEach(chosenTypeMeasures, id: \.self) {
                            Text($0)
                        }
                    }
                } header: {
                    Text("Unit you want to convert to")
                }
                
                Section {
                    TextField("Measure", value: $inputMeasure, format: .number
                    )
                        .keyboardType(.decimalPad)
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
