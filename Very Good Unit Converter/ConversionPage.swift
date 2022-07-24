//
//  ConversionPage.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/22/22.
//

import SwiftUI

struct ConversionPage: View {
    let phrase : String
    @State private var howManyMeters = ""
    @State private var Answer = 0.0
    
    var body: some View {
        VStack {
            Text(phrase)
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter Meters#", text: $howManyMeters)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
                .keyboardType(.numberPad)
            Button("Calculate") {
                if let metersNo = Int(howManyMeters) {
                    Answer = Double(metersNo) * 3.281
                }
            }
            .padding()
            Text("\(howManyMeters) meters is \(Answer) feet")
                .fontWeight(.bold)
        }
    }
}
struct ConversionPage_Previews: PreviewProvider {
    static var previews: some View {
        ConversionPage(phrase: "howdy")
    }
}

