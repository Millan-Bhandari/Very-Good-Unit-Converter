//
//  HectareToAcre.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct HectareToAcre: View {
    var phrase : String
    @State private var amountOfHectares = ""
    @State private var Answer = 0.0
    var body: some View {
        Text(phrase)
            .fontWeight(.bold)
            .font(.title)
        TextField("Hectares #", text: $amountOfHectares)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .keyboardType(.numberPad)
            .padding()
        Button("Convert") {
            if let hectaresNo = Int(amountOfHectares) {
                Answer = Double(hectaresNo) * 2.471
            }
        }
        Text("\(amountOfHectares) is equal to \(Answer, specifier: "%.2f") acres.")
            .fontWeight(.bold)
            .padding()
        Spacer()
    }
}

struct HectareToAcre_Previews: PreviewProvider {
    static var previews: some View {
        HectareToAcre(phrase: "howdy")
    }
}
