//
//  Arika-Chapter-4.swift
//  HProfileChp1
//
//  Created by Arika Nicole Handy on 11/14/23.
//

import SwiftUI

struct Arika_Chapter_4: View {
    @State private var drinks = ["Patron", "DonJulio", "Green Tea Shots", "Jack Daniels"]
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
            ScrollView{
           
                
                VStack {
                    
                    Image("Girlfriends")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 220)
                        .rotationEffect(.degrees(-12))
                        
                    Spacer()
                    
                    VStack {
                        Text("   Amanda stared at her reflection in the mirror feeling down from her day. She lost a huge case for the firm. She wondered if she should go out or stay home. Just then she received a text from her homegirls. Does she stay home or go out?")
                        
                        Toggle(isOn: $goOut) {
                            Text(goOut == false ? "Stay home" : "Go out")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            if goOut {
                                Text("We're going club hopping! Let me call my girls")
                            } else {
                                Text("I am in for the night cuddling with Snickers")
                                
                            }
                        }
//                        .padding(.bottom, 40)
                        
                    }
                    
                    
                        VStack {
                            Picker("Friends", selection: $friend) {ForEach(friends, id: \.self) { index in Text(index)}
                            }
                            .pickerStyle(SegmentedPickerStyle())
                            .fontWeight(.bold)
                            .padding(.bottom)
                            
                            switch friend {
                            case "Amanda":
                                Text("Wants to go to Compound Night club")
                            case "Tammy":
                                Text("Wants to go to Indigo Night Club")
                            case "Olivia":
                                Text("Wants to go to Room 112")
                            case "Jasmine":
                                Text("Wants to go Truth Night Club")
                            default:
                                Text("")
                                
                            }
                            
                            VStack {
                                HStack {
                                    Button("Party Time") {
                                        print("Drink up ladies!")
                                        
                                    }
                                    
                                    Button("Slow Down") {
                                        print("We had enough!")
                                    }
                                    
                                    
                                }
                                .padding(.top)

                            Picker("Drinks", selection: $drink) {ForEach(drinks, id: \.self) { index in Text(index)}
                            }
                            .pickerStyle(InlinePickerStyle())
                            .fontWeight(.heavy)
                            
                            
                            Stepper(value: $shots, in: 0...10, step: 1) {Text("Number of Shots: \(shots)")
                            }
                            TextField("How should Amanda get home?", text: $rideHome)
                                .fontWeight(.bold)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                           
                                switch rideHome {
                                case "Bus":
                                    Text("She fell asleep and missed her stop.")
                                case "Friend":
                                    Text("The weird guy is always available.")
                                case "Uber":
                                    Text("Threw up in the backseat, byebye 5 star rating")
                                case "Truck":
                                    Text("Police pulled her over")
                                case "Walk":
                                    Text("Broke her heel and hobbled home")
                                default:
                                    Text("")
                                }
//                                .padding()
//                            Spacer()
                        }
                        
                    }
                }.padding()
                .navigationTitle("When It Rains It Pours")
            }
}        }
    }
}


    
    #Preview {
        Arika_Chapter_4()
    }

