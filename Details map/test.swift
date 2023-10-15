//
//  ContentView.swift
//  Details map
//
//  Created by Farah mohammed alshammari on 26/03/1445 AH.

import SwiftUI

struct test: View {
    var rating: Double = 5
    var priceRange: String = "$$"
    
    var body: some View {
        
        VStack{
            
            ZStack {
                Image("img3")
                    .resizable()
                    .frame(width: 400, height: 455.0)
                    .cornerRadius(30)
                    .ignoresSafeArea()
                
                Text("Karamvet")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .offset(y: -140) //
                
            }
            
            Spacer()
            
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Karamvet")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(.pink)
                        .padding()
                    Text("☎️ 0537191761")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding()
                        .offset(y: -45)
                    Spacer()
                    Text("⏰ Working Hours: ")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding()
                        .offset(y: -85)
                    Text("       Sat ⎯⎯⎯ Thu")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding()
                        .offset(y: -130)
                    Text("       10 AM - 10 PM")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(.black)
                        .padding()
                        .offset(y: -175)
                    Text("        FRIDAY    OFF")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .padding()
                        .offset(y: -218)
                    
                }
                
                Spacer()
                
                ZStack {
                    starRate(rating: rating)
                        .padding()
                        .offset(y: -170)
                    Text("500 SR - 1000 SR")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .offset(y: -145)
                    
                }
            }
            
            VStack{
                RoundedRectangle (cornerRadius: 25.0)
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 338 , height: 202)
                    .offset(y: -200)
                Spacer()
                RoundedRectangle (cornerRadius: 25.0)
                    .foregroundColor(.white)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .frame(width: 338 , height: 202)
                    .offset(y: -200)
            }
        }
    }
    }
    struct starRate: View {
        var rating: Double
        
        var body: some View {
            
            ScrollView{
                HStack(alignment: .bottom) {
                    ForEach(0..<5) { index in
                        if Double(index) < rating {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        } else if Double(index) + 0.5 == rating {
                            Image(systemName: "star.leadinghalf.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star")
                                .foregroundColor(.gray)
                            
                            
                        }
                    }
                }
            }
        }
        
    }
