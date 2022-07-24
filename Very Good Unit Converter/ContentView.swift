//
//  ContentView.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Brit Helper")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Form {
                    Section{
                        NavigationLink("Meters to feet", destination: MetersToFeet(phrase: "Meters to Feet"))
                            .padding()
                            .foregroundColor(.red)
                
                    }
                    Section {
                        NavigationLink("Kilometers to Miles", destination: KilometersToMiles(phrase: "Kilometers to Miles"))
                            .padding()
                            .foregroundColor(.gray)
                    }
                    Section {
                        NavigationLink("Celsius to Fahrenheit", destination: CelsiusToFarenheit(phrase: "Celsius to Fahrenheit"))
                            .padding()
                            .foregroundColor(.blue)
                    }
                    Section {
                        NavigationLink("Kilograms to Pounds", destination: KilosToPounds(phrase: "Kilograms to Pounds"))
                            .padding()
                            .foregroundColor(.red)
                    }
                    Section {
                        NavigationLink("Litres to Gallons", destination: LitresToGallons(phrase: "Litres to Gallons"))
                            .padding()
                            .foregroundColor(.gray)
                    }
                    Section {
                        NavigationLink("Grams to Ounces", destination: gramsToOunces(phrase: "Grams to Ounces"))
                            .padding()
                            .foregroundColor(.blue)
                    }
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
