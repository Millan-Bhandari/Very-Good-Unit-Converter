//
//  CentimetersToInches.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct CentimetersToInches: View {
    var phrase : String
    @State private var CentimetersAmount = ""
    @State private var Answer = 0.0
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Centimeters #", text: $CentimetersAmount)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .keyboardType(.numberPad)
            .padding()
        Button("Calculate") {
            if let CentimetersNo = Int(CentimetersAmount) {
                Answer = Double(CentimetersNo) / 2.54
            }
        }
        Text("\(CentimetersAmount) centimeters is \(Answer, specifier: "%.2f") inches")
            .fontWeight(.bold)
            Spacer()
    }
}

struct CentimetersToInches_Previews: PreviewProvider {
    static var previews: some View {
        CentimetersToInches(phrase: "howdy")
    }
}
