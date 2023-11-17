//
//  ContentView.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    @GestureState private var zoom = 1.0
    var body: some View {
        ZStack {
        Color ("Color")
                .ignoresSafeArea()
        ScrollView{
            ZStack{
                Color.gray
                    .opacity(0.7)
            
           VStack {
                        Image(systemName: "flame")
                            .imageScale(.large)
                            .foregroundStyle(.red)
                        Text("\"Blast From The Past!\"")
                        //.padding()
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40)
                        Image (systemName: "book")
                            
                        Text("Chapter 1")
                    .fontWeight(.bold)
                            .padding()
                        Text("By Sarah Huguley")
                    .fontWeight(.bold)
                        
                       
                        
                        Text ("\t It's a chill early morning and the first of September, the sky is still dark, and the birds have just began to chirp. At 23891 Walker Street, the silence is interuppted by a serene chirping of birds and classical music in the background. Amanda wakes up  irritable, without lifting her head, she feels for her alarm clock, and turns it off. She then turns over in her bed and removes her chanel eye mask,and sits up and slides into her chanel slippers. She grabs her silk robe, and heads to her bathroom, and opens her medicine cabinet. Amanda grabs her toothpaste and starts brushing her teeth. She then washes her face with her clinique facial products, and then heads to the shower. After her shower, she then heads to her massive walk in closet, and decides on her Ferragamo suit, and heels and put's them on, she then leaves her closet and calls for snickers.")
                   .gesture(
                       MagnifyGesture()
                           .updating($zoom) { value, gestureState, transaction in
                               gestureState = value.magnification
                           }
                   )
           
               Text("1")
               
               
                   
                        
                                       
                        
                    
                            .padding()
                            
    //                     .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 600000, alignment: .topLeading)
                            .lineSpacing(10.0)
                        
                      //  func kerning(_kerning:CGFloat)-> some View
                        

                   
                }
            }
            .padding()
                
            }
        }
    }
}
    #Preview {
        ContentView()
    }

