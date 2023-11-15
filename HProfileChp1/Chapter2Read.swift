//
//  Chapter2Read.swift
//  HProfileChp1
//
//  Created by Matthew Fails on 11/14/23.
//

import SwiftUI

struct Chapter2Read: View {
    let randomInt = Int.random(in: 3..<8)
    let randomInt2 = Int.random(in: 80..<90)
    var music1 = ["I'll be There", "Beat it", "Never Gonna Give You Up"]
    var music2 = ["Halo", "Who run the World", "I'm Every Woman"]
//    let music1InString  = music1.joined(separator: ", ")
//    let music2InString = music2.joined(separator: ", ")
    var body: some View {
        
//        func musicPlayer(music1: Array<Any>, music2: Array<Any>, sum: Int)  {
//            if sum <= 25 {
//                Text("\(music1InString)")
//            } else {
//                Text("\(music2InString)")
//            }
//        }
        
        func addTwoNumbers() -> Int {
            let result = randomInt * randomInt
            if result <= 25 {
                Text("Amanda let out a sigh of relief, there wasn't so much work to be done for today. \"Finally something is going my way.\"")
                
            }else{
                Text("\"Looks like I'm in for the long haul. Sorry Snickers, I'm gonna be home a little late tonight.\"")
            }
            return result
           
        }
        
        func completeApplication(applicationDone: Bool) {
            if applicationDone == true {
                Text("Congratulations!")
            } else {
                Text("You Failed!")
            }
                
        }
        
        return Text("J Johnah Jamenson speaks tirlessly on the phone with some seemingly high up individual, his gravely voice permeating through the halls.")
        completeApplication(applicationDone: false)
        return Text("Failed again, another disappointment to add to the pile. With a sigh of resignaton Amanda breathes out in exasperation, \"I don't get paid enough for this, I should hurry up and become a lawyer.")
    }
}

#Preview {
    Chapter2Read()
}
