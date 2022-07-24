//
//  ConversionPage.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/22/22.
//

import SwiftUI

struct ConversionPage: View {
    @State private var answer = 0
    let units : Data
    var body: some View {
        Text("Conversion")
            .font(.title)
            .fontWeight(.heavy)
        Text("\(units.finalAnswer)")
    }
}
struct ConversionPage_Previews: PreviewProvider {
    static var previews: some View {
        ConversionPage(units: Data())
    }
}

