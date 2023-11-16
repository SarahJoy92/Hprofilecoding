//
//  Chp1Page2.swift
//  HProfileChp1
//
//  Created by Sarah Huguley on 11/15/23.
//

import SwiftUI

struct Chp1Page2: View {
   @GestureState private var zoom = 1.0
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Color")
                    .ignoresSafeArea()
                ScrollView {
                    ZStack {
                        //                    Color.gray
                        //                        .opacity(0.7)
                        
                        VStack {
                            //Spacer()
                            
                            VStack {
                                Text("\t She then takes one more look at herself,  in the mirror and slides her hand through her silk press, once to her liking, she heads to snickers room and wakes him up, they then both head to the kitchen, she washes her hands and then prepares his food. Amanda then deicedes to make some coffee and heats up a blueberry bagel. Amanda washes Snickers bowl and plops him down in his play area, and text the babysitter to tell her she's leaving. Amanda then heads to her side entrance, grabs her coat, keys and birkin, and turns on her alarm. She then goes into her garage, and closes and locks her door, and unlocks her Mercedez Benz. ")
                                
                                    .padding()
                                    .multilineTextAlignment(.center)
                                //.frame(minWidth:0,maxWidth: .infinity)
                                    .lineSpacing(10.0)
                                    .padding(.trailing)
                                    .frame(alignment:.centerLastTextBaseline)
                                    .scaleEffect(zoom)
                                    .gesture(
                                        MagnifyGesture()
                                            .updating($zoom) { value, gestureState, transaction in
                                                gestureState = value.magnification
                                            }
                                    )
                                
                                NavigationLink(destination: Chp1Page3(), label: {
                                    Image("courthouse")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100,height: 200)
                                        .padding()
                                })
                               
          
                                
                            }
                            .background(Color.gray
                                .opacity(0.7))
                    
                        }

                        
                    }
                    .padding()
                    
                }
             
            }
          
        }
    }
}
    #Preview {
        Chp1Page2()
    }

