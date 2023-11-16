//
//  Arika-Chapter-4.swift
//  HProfileChp1
//
//  Created by Arika Nicole Handy on 11/14/23.
//

import SwiftUI

struct Arika_Chapter_4: View {
    @State private var drinks = ["Patron", "DonJulio", "WhiteZenfandel", "Mojito"]
    @State private var drink = "patron"
    @State private var friends = ["Amanda","Tammy","Olivia","Jasmine"]
    @State private var friend = "Amanda"
    @State private var shots = 0
    @State private var goOut = false
    @State private var rideHome: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.mint
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("Girlfriends")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        
                    Spacer()
                    
                    VStack {
                        Text("   Amanda stared at her reflection in the mirror feeling down from her day. When she wins a case she has a slice of Caramel Cake but if she loses she has a glass of wine. She wondered if she should go out or stay home. Just then she received a text form her homegirls. Does she stay home or go out?")
                        
                        Toggle(isOn: $goOut) {
                            Text(goOut == false ? "Stay home" : "Go out")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }.padding(.bottom, 40)
                        
                    }
                    
                    VStack {
                        Picker("Friends", selection: $friend) {ForEach(friends, id: \.self) { index in Text(index)}
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .fontWeight(.bold)
                        
                        Picker("Drinks", selection: $drink) {ForEach(drinks, id: \.self) { index in Text(index)}
                        }
                        .pickerStyle(InlinePickerStyle())
                        .fontWeight(.heavy)

                        
                        Stepper(value: $shots, in: 0...10, step: 1) {Text("Number of Shots: \(shots)")
                            }
                        TextField("How should Amanda get home?", text: $rideHome)
                            .fontWeight(.bold)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        .padding()
                        Spacer()
                    }
                    
                }
                .navigationTitle("Things go Wrong")
            }
        }
    }
}


    
    #Preview {
        Arika_Chapter_4()
    }

