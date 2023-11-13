//
//  ContentView.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Blast From The Past!")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                
            Text("Chapter 1")
            Text("By Sarah Huguley123")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
