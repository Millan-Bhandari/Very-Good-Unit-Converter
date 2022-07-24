//
//  CelsiusToFarenheit.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/23/22.
//

import SwiftUI

struct CelsiusToFarenheit: View {
    var phrase : String
    @State private var howMuchCelsius = ""
    @State private var Answer = 0
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        TextField("Enter Celsius °", text: $howMuchCelsius)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.center)
            .frame(width: 200, height: 30, alignment: .center)
            .font(.body)
            .padding()
            .keyboardType(.numberPad)
        Button("Calculate") {
            if let CelsiusNo = Int(howMuchCelsius) {
                Answer = Int(CelsiusNo) * 9/5 + 32
            }
        }
        .padding()
        Text("\(howMuchCelsius)° Celsius is \(Answer) Fahrenheit.")
            .fontWeight(.bold)
        Spacer()
    }
}

struct CelsiusToFarenheit_Previews: PreviewProvider {
    static var previews: some View {
        CelsiusToFarenheit(phrase: "hi")
    }
}
