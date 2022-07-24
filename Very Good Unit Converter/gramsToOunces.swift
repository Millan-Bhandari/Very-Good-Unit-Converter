//
//  gramsToOunces.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct gramsToOunces: View {
    var phrase : String
    @State private var amountofGrams = ""
    @State private var Answer = 0.0
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Grams #", text: $amountofGrams)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .padding()
        Button("Calculate") {
            if let gramsNo = Int(amountofGrams) {
                Answer = Double(gramsNo) / 28.35
            }
        }
        Text("\(amountofGrams) grams is \(Answer, specifier: "%.2f") ounces.")
            .fontWeight(.bold)
        Spacer()
    }
}

struct gramsToOunces_Previews: PreviewProvider {
    static var previews: some View {
        gramsToOunces(phrase: "howdy")
    }
}
