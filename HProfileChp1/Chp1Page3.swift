//
//  Chp1Page3.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/16/23.
//

import SwiftUI

struct Chp1Page3: View {
    var body: some View {
        ZStack {
            Color(Color.color)
                .ignoresSafeArea()
            ScrollView{
                ZStack{
                    Color.gray
                        .opacity(0.7)
                        
                    
                    // Image("amandap")
                    //  .scaledToFit()
                    // .padding()
                    
                    VStack {
                        Text("\"Amanda Pierce and Associates\"")
                            .fontWeight(.bold)
                            .font(.largeTitle)
                            .font(.body)
                            .padding()
                    
                    }
                    
                    
               }
                
                
            }
        }
    }
}
#Preview {
    Chp1Page3()
    
    
}
