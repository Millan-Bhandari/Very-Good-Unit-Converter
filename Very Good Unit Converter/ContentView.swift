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
                NavigationLink("Meters to feet", destination: MetersToFeet(phrase: "Meters to Feet"))
                    .padding(50)
                NavigationLink("Kilometers to Miles", destination: KilometersToMiles(phrase: "Kilometers to Miles"))

                }
                .padding()
                
                Spacer()
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
