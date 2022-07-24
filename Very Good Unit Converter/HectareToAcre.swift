//
//  HectareToAcre.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct HectareToAcre: View {
    var phrase : String
    var body: some View {
        Text(phrase)
            .fontWeight(.Bold)
            .font(.title)
    }
}

struct HectareToAcre_Previews: PreviewProvider {
    static var previews: some View {
        HectareToAcre(phrase: "howdy")
    }
}
