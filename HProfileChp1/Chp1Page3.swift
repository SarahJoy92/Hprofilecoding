//
//  Chp1Page3.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/16/23.
//

import SwiftUI

struct Chp1Page3: View {
    @GestureState private var zoom = 1.0
    var body: some View {
        ZStack {
            Color(Color.color)
                .ignoresSafeArea()
            ScrollView{
                ZStack{
                    Color.gray
                       .opacity(0.7)
                    
                
                    
                   
             // }
                    
                    // Image("amandap")
                    //  .scaledToFit()
                    // .padding()
                    
                  // VStack {
                   // Image ()
                        Text("THE CHARACTERS")
                            .fontWeight(.bold)
                           .font(.largeTitle)
                          // .font(.body)
                           .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                            .padding()
                           
                         VStack {
                             Spacer()
                             Spacer()
                            Spacer()
                             Text("\"HIGH PROFILE\"").font(.headline)
                                 .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                
                            List {
                               // Image(systemName: )
                            //Text ("Amanda: CE0")
                            Label("Amanda: CEO of Law Firm", systemImage: "crown.fill" )
                            Label ("Harold:Law Firm Partner", systemImage: "figure.stand")
                            //Text ("Harold: Law Firm Partner")
                            Label("Ashley: Secretary", systemImage: "studentdesk")
                           //  Text ("Ashley: Secretary")
                            Label("Darrell Fuller: Ex-Boyfriend", systemImage: "heart.slash.fill")
                           // Text("Darrell Fuller: EX-Boyfriend")
                            Label("James Woods: Private Investiagtor", systemImage: "binoculars.fill")
                           // Text("James Woods: Private Invetigator")
                            Label("Tammy,Olivia,Jasmine: Girlfriends", systemImage: "figure.socialdance")
                            Label("Snickers: Amanda's Dog", systemImage: "dog.fill")
                            Label("Sharon: Amanda's Mom", systemImage: "figure.and.child.holdinghands")
                                    .gesture(
                                        MagnifyGesture()
                                            .updating($zoom) { value, gestureState, transaction in
                                                gestureState = value.magnification
                                            }
                                    )
                            
                            
                        
                        
                            
                                
                        
                                
                                
                                
                            
                        }
                          
                        
                            
                       }
                    
                
                

                         .background(Color.gray)
                         .opacity(7)
                        
                    
                        
                    }
                
                .padding()
                Text("3")
                    //.padding()
                        
                    }
           // .background(Color.gray
                //.opacity(0.7))
    
           // .background(Color("Color"))
                    
                    
                }
          //  }
       }
    }
//}
#Preview {
    Chp1Page3()
    //}
}
    //}
    

