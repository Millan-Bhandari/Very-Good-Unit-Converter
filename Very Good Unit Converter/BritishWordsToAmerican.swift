//
//  BritishWordsToAmerican.swift
//  Very Good Unit Converter
//
//  Created by Millan Bhandari on 7/24/22.
//

import SwiftUI

struct BritishWordsToAmerican: View {
    @State private var BritishWord = ""
    @State private var AmericanWord = ""
    var phrase : String
    var body: some View {
        Text(phrase)
            .font(.title)
            .fontWeight(.bold)
        Picker("Britsh Word", selection: $BritishWord) {
            Group {
            Text("Mum").tag("Mum")
            Text("Trolley").tag("Trolley")
            Text("Mate").tag("Mate")
            Text("Nappy").tag("Nappy")
            Text("Chips").tag("Chips")
            Text("Potato Crisps").tag("Potato Crisps")
            Text("Bloke").tag("Bloke")
            Text("Bugger all").tag("Bugger All")
            Text("Pram").tag("Pram")
            Text("Trainers").tag("Trainers")
            }
            Group {
                Text("Nutter").tag("Nutter")
                Text("Knackered").tag("Knackered")
                Text("Gobsmacked").tag("Gobsmaked")
                Text("Dog's Bollocks").tag("Dog's Bollucks")
                Text("Chap").tag("Chap")
                Text("Shambles").tag("Shambles")
                Text("Bangers").tag("Bangers")
                Text("Starkers").tag("Starkers")
                Text("Plastered").tag("Plastered")
                Text("Give you a bell").tag("Give you a bell")
            }
            Group {
                Text("Ace").tag("Ace")
                Text("Blinding").tag("Blinding")
                Text("Brill").tag("Brill")
                Text("Buzzing").tag("Buzzing")
                Text("Chuffed").tag("Chuffed")
                Text("Hunky-dory").tag("Hunky-Dory")
                Text("Tickled pink").tag("Tickled pink")
                Text("Smashing").tag("Smashing")
                Text("Git").tag("Git")
                Text("Muppet").tag("Muppet")
            }
        }
        .pickerStyle(WheelPickerStyle())
        .padding()
        Spacer()
        
        
        Button("Convert") {
            if BritishWord == "Mum" {
                AmericanWord = "'Mom'"
            }
            if BritishWord == "Trolley" {
                AmericanWord = "'Shopping Cart'"
            }
            if BritishWord == "Mate" {
                AmericanWord = "'Pal'"
            }
            if BritishWord == "Nappy" {
                AmericanWord = "'Diaper'"
            }
            if BritishWord == "'Chips'" {
                AmericanWord = "'French Fries'"
            }
            if BritishWord == "Potato Crips" {
                AmericanWord = "'Potato Chips'"
            }
            if BritishWord == "Bloke" {
                AmericanWord = "'A man'"
            }
            if BritishWord == "Bugger All" {
                AmericanWord = "'Nevermind'"
            }
            if BritishWord == "Pram" {
                AmericanWord = "'Baby Stroller'"
            }
            if BritishWord == "Trainers" {
                AmericanWord = "'Tennis Shoes'"
            }
            if BritishWord == "Nutter" {
                AmericanWord = "'A crazy person'"
            }
            if BritishWord == "Knackered" {
                AmericanWord = "'Tired'"
            }
            if BritishWord == "Gobsmacked" {
                AmericanWord = "'Shocked'"
            }
            if BritishWord == "Dog's Bollucks" {
                AmericanWord = "'Awesome'"
            }
            if BritishWord == "Chap" {
                AmericanWord = "'Buddy'"
            }
            if BritishWord == "Shambles" {
                AmericanWord = "'A Mess'"
            }
            if BritishWord == "Bangers" {
                AmericanWord = "'Sausage'"
            }
            if BritishWord == "Plastered" {
                AmericanWord = "'Intoxicated'"
            }
            if BritishWord == "Starkers" {
                AmericanWord = "'Naked'"
            }
            if BritishWord == "Give you a bell" {
                AmericanWord = "'Give you a call'"
            }
            if BritishWord == "Ace" {
                AmericanWord = "'Amazing, Excellent'"
            }
            if BritishWord == "Blinding" {
                AmericanWord = "'Superb'"
            }
            if BritishWord == "Brill" {
                AmericanWord = "'Short for brilliant'"
            }
            if BritishWord == "Buzzing" {
                AmericanWord = "'Exciting'"
            }
            if BritishWord == "Chuffed" {
                AmericanWord = "'Pleased'"
            }
            if BritishWord == "Hunky-Dory" {
                AmericanWord = "'Everything is good'"
            }
            if BritishWord == "Tickled Pink" {
                AmericanWord = "'To be very happy about something'"
            }
            if BritishWord == "Smashing" {
                AmericanWord = "'Wonderful'"
            }
            if BritishWord == "Git" {
                AmericanWord = "'to be incompetent and annoying'"
            }
            if BritishWord == "Muppet" {
                AmericanWord = "'Stupid and childish'"
            }
        }
        .padding()
        Text("\(BritishWord) means \(AmericanWord) in America")
            .fontWeight(.bold)
    }
}

struct BritishWordsToAmerican_Previews: PreviewProvider {
    static var previews: some View {
        BritishWordsToAmerican(phrase: "howdy")
    }
}
