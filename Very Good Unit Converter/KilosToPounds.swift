//
//  KilosToPounds.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct KilosToPounds: View {
    @State private var howManyKilos = ""
    @State private var Answer = 0.0
    var phrase : String
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Enter Kilograms#", text: $howManyKilos)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .padding()
            .keyboardType(.numberPad)
        Button("Calculate") {
            if let kilosNo = Double(howManyKilos) {
                Answer = Double(kilosNo) * 2.205
            }
        }
        Text("\(howManyKilos) kilograms is \(Answer, specifier: "%.2f") lbs.")
            .fontWeight(.bold)
        Spacer()
    }
}

struct KilosToPounds_Previews: PreviewProvider {
    static var previews: some View {
        KilosToPounds(phrase: "howdy")
    }
}
