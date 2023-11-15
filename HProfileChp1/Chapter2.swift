//
//  Chapter2.swift
//  HProfileChp1
//
//  Created by Matthew Fails on 11/13/23.
//

import SwiftUI

struct Chapter2: View {
    @State private var soundOn = false
    @State private var bookRead = false
    var body: some View {
        ZStack{
            Color(.white)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "character.book.closed.fill")
                    .font(.largeTitle)
                    .padding()
                Text("Would you like Audio playback?")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    Toggle(isOn: $soundOn) {
                        Image(systemName: soundOn ?
                              "speaker.wave.2.fill" :
                                "speaker.slash.fill")
                        .font(.largeTitle)
                        .foregroundColor(soundOn ? .green : .black)
                        .contentTransition(.symbolEffect(.replace))
                    }.frame(width: 150)
                }
                Button{
                    bookRead.toggle()
                    
                }label: {
                    Rectangle()
                        .frame(width: 100 , height: 50)
                        .overlay(soundOn ? Text("Read Audiobook").foregroundColor(.white) : Text("Read").foregroundColor(.white))
                    
                }
            }
        }
    }
}
        
        #Preview {
            Chapter2()
        
    
}
