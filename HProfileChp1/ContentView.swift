//
//  ContentView.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
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
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
                Text("Chapter 1")
                Text("By Sarah Huguley")
                
                
                
            }
            Text ("It's a chill early morning and the first of September, the sky is still dark, and the birds have just began to chirp. At 23891 Walker Street, the silence is interuppted by a serene chirping of birds and classical music in the background. Amanda wakes up  irritable, without lifting her head, she feels for her alarm clock, and turns it off. She then turns over in her bed and removes her chanel eye mask,and sits up and slides into her chanel slippers. She grabs her silk robe, and heads to her bathroom, and opens her medicine cabinet. Amanda grabs her toothpaste and starts brushing her teeth. She then washes her face with her clinique facial products, and then heads to the shower.")
                .padding()
                .offset(y:0)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 6000, alignment: .topLeading)
            
        }
    }
    
    #Preview {
        ContentView()
    }
}
