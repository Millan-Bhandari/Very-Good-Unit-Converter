//
//  LitresToGallons.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct LitresToGallons: View {
    var phrase: String
    @State private var amountOfLitres = ""
    @State private var Answer = 0.0
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Enter Litres Amount", text: $amountOfLitres)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .padding()
            .keyboardType(.numberPad)
        Button("Calculate") {
            if let litresNo = Int(amountOfLitres) {
                Answer = Double(litresNo) / 3.785
            }
        }
        Text("\(amountOfLitres) litres is \(Answer, specifier: "%.2f") gallons.")
            .fontWeight(.bold)
        Spacer()
    }
}

struct LitresToGallons_Previews: PreviewProvider {
    static var previews: some View {
        LitresToGallons(phrase: "hi")
    }
}
