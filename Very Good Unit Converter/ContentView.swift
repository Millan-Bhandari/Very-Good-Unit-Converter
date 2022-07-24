//
//  ContentView.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/22/22.
//

import SwiftUI

struct ContentView: View {
    @State private var units = Data()
    var body: some View {
        NavigationView {
            VStack {
                Text("Feet converter")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Picker("Number of Unit", selection: $units.amountOfUnit1) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                    Text("6").tag(6)
                    Text("7").tag(7)
                    Text("8").tag(8)
                    Text("9").tag(9)
                }
                Text("Feet")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("Convert into")
                Picker("Unit 2", selection: $units.secondUnit) {
                    Text("Miles").tag("miles")
                    Text("Kilometers").tag("kilometers")
                    Text("Centimeters").tag("centimeters")
                    Text("Inches").tag("Inches")
                    Text("Meters").tag("Meters")
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                Button("Convert") {
                    if units.secondUnit == "Inches" {
                        units.finalAnswer = units.amountOfUnit1 * 12
                    }
                }
                .padding()
                NavigationLink("Next", destination: ConversionPage(units: units))

                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Data {
    var amountOfUnit1 = 0
    var firstUnit = ""
    var secondUnit = ""
    var amountOfFirstUnitTextField = 0
    var finalAnswer = 0
}
