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
        ScrollView {
            
            VStack{
                
                ZStack {
                    Image("img3")
                        .resizable()
                        .frame(width: 400, height: 455.0)
                        .cornerRadius(30)
                        .ignoresSafeArea()
                        .offset(y: -60)
                    
                    Text("Karamvet")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .offset(y: -190)
                    
                }
                
                Spacer()
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Karamvet")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.pink)
                            .padding()
                            .offset(y: -60)
                        Text("☎️ 0537191761")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .padding()
                            .offset(y: -95)
                        Spacer()
                        Text("⏰ Working Hours: ")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .padding()
                            .offset(y: -150)
                        Text("       Sat ⎯⎯⎯ Thu")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .padding()
                            .offset(y: -190)
                        Text("       10 AM - 10 PM")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(.black)
                            .padding()
                            .offset(y: -230)
                        Text("        FRIDAY    OFF")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                            .padding()
                            .offset(y: -270)
                        
                    }
                    
                    Spacer()
                    
                    ZStack {
                        starRate(rating: rating)
                            .padding()
                            .offset(y: -50)
                        Text("500 SR - 1000 SR")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                            .offset(y: -205)
                        
                    }
                }
                
                VStack{
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 26)
                            .frame(width: 338, height: 202)
                            .foregroundColor(Color.white)
                            .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
                            .position(x: 197, y: -170)
                        
                        Text("SERVICE WE OFFER")
                            .font(.custom("SF Pro", size: 20))
                            .position(x: 189, y: -250)
                            .padding()
                        Text(" ✔︎ Surgeries")
                            .font(.custom("SF Pro", size: 17))
                            .position(x:90, y: -190)
                            .padding()
                        Text("   ✔︎ Treatments")
                            .font(.custom("SF Pro", size: 17))
                            .position(x:90, y: -160)
                            .padding()
                        Text("✔︎  Vaccines")
                            .font(.custom("SF Pro", size: 17))
                            .position(x: 90, y: -130)
                            .padding()
                        Text("✔︎ Detection")
                            .font(.custom("SF Pro", size: 17))
                            .position(x:270, y: -190)
                            .padding()
                        Text("✔︎ Showers")
                            .font(.custom("SF Pro", size: 17))
                            .position(x: 270, y: -160)
                            .padding()
                        
                        Text("✔︎ Nail cut")
                            .font(.custom("SF Pro", size: 18))
                            .position(x:270, y: -130)
                            .padding()
                        
                    }
                    
                   
                        
                    
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 210, height: 80)
                                .foregroundColor(Color.pink)
                                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
                                .position(x: 205, y: -210)
                            
                            Text("Doctors Card")
                                .fontWeight(.bold )
                                .foregroundColor(.white)
                            
                                .font(.custom("SF Pro", size: 28))
                                .position(x: 190, y: -245)
                                .padding()
                            
                            
                            RoundedRectangle(cornerRadius: 26)
                                .frame(width: 330, height: 150)
                                .foregroundColor(Color.white)
                                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
                                .position(x: 199, y: -130)
                            
                            Text("Waeel Ahmed")
                                .font(.custom("SF Pro", size: 28))
                                .position(x:120, y: -170)
                                .padding()
                            Text("Experiens:")
                                .font(.custom("SF Pro", size: 22))
                                .position(x:90, y: -130)
                                .padding()
                            Text("        +15 Years in Pet treatment:")
                                .font(.custom("SF Pro", size: 17))
                                .position(x:120, y: -105)
                                .padding()
                        }
                        
                    Spacer()
                    
                }
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
#Preview(){
    test()
}
