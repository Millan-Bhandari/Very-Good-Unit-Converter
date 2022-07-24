//
//  KilometersToMiles.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/23/22.
//

import SwiftUI

struct KilometersToMiles: View {
    var phrase : String
    @State private var howManyKilometers = ""
    @State private var Answer = 0.0
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Enter Kilometers#", text: $howManyKilometers)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .padding()
            .keyboardType(.numberPad)
        Button("Calculate") {
            if let kilometerNo = Int(howManyKilometers) {
                Answer = Double(kilometerNo) * 0.62137
            }
        }
        .padding()
        Text("\(howManyKilometers) kilometers is \(Answer) miles.")
            .fontWeight(.bold)
        Spacer()
    }
}

struct KilometersToMiles_Previews: PreviewProvider {
    static var previews: some View {
        KilometersToMiles(phrase: "hi")
    }
}
