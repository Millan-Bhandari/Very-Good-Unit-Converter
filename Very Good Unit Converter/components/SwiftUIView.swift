//
//  SwiftUIView.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/23/22.
//

import SwiftUI

struct SwiftUIView: View {
    var text : String
    var body: some View {
        Text(text)
            .foregroundColor(.black)
            .padding()
            .padding(.horizontal)
            .background(.red)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Calculate")
    }
}
