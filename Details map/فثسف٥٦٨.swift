//
//  فثسف٥٦٨.swift
//  Details map
//
//  Created by Farah mohammed alshammari on 29/03/1445 AH.
//

import SwiftUI

struct TestView: View {
    var rating: Double = 5

    var body: some View {
        VStack {
            ZStack {
                Image("img3")
                    .resizable()
                    .frame(width: 400, height: 455)
                    .cornerRadius(30)

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

                    Text("☎️ 0537191761")
                        .font(.title3)
                        .foregroundColor(.black)
                        .offset(y: -45)

                    Text("⏰ Working Hours:")
                        .font(.body)
                        .foregroundColor(.black)
                        .offset(y: -85)

                    Text("Sat ⎯⎯⎯ Thu")
                        .font(.body)
                        .foregroundColor(.black)
                        .offset(y: -130)

                    Text("10 AM - 10 PM")
                        .font(.body)
                        .foregroundColor(.black)
                        .offset(y: -175)

                    Text("FRIDAY OFF")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.red)
                        .offset(y: -218)
                }

                Spacer()

                VStack {
                    StarRate(rating: rating)
                        .offset(y: -170)

                    Text("500 SR - 1000 SR")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .offset(y: -145)
                    
                    ServicesView()
                        .offset(y: -30)
                }
            }

            DoctorCardListView()
                .padding()
        }
    }
}

struct StarRate: View {
    var rating: Double

    var body: some View {
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

struct ServicesView: View {
    var services = [
        "✔︎ Surgeries",
        "✔︎ Treatments",
        "✔︎ Vaccines",
        "✔︎ Detection",
        "✔︎ Showers",
        "✔︎ Nail cut"
    ]

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 26)
                .frame(width: 338, height: 202)
                .foregroundColor(Color.white)
                .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
            
            Text("SERVICE WE OFFER")
             //   .font(.custom("SF Pro", size: 20)
             //   .position(x: 179, y: 130)

            ForEach(services, id: \.self) { service in
                Text(service)
              //      .font(.custom("SF Pro", size: 17))
            }
        }
    }
}

struct DoctorCardListView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                DoctorCardView(name: "Dr. Waeel Ahmed", experience: "+15 Years in Pet Treatment")
                DoctorCardView(name: "Dr. Farah Mohammed", experience: "+12 Years in Pet Treatment")
            }
        }
    }
}

struct DoctorCardView: View {
    var name: String
    var experience: String

    var body: some View {
        VStack {
            Text(name)
                .font(.custom("SF Pro", size: 24))

            Text("Experience:")
                .font(.custom("SF Pro", size: 20))

            Text(experience)
                .font(.custom("SF Pro", size: 17))
        }
        .frame(width: 338, height: 149)
        .background(Color.white)
        .cornerRadius(26)
        .shadow(color: Color.gray.opacity(0.5), radius: 4, x: 0, y: 4)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

