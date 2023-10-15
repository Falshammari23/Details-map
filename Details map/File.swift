//
//  File.swift
//  Details map
//
//  Created by Farah mohammed alshammari on 27/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var rating: Double = 3
    
    var body: some View {
        VStack {
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
                    .offset(y: -140)
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
                }
            }
        }
        
    }
}
