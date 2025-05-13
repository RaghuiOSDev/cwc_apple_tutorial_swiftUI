//
//  CreatingAndCombiningView.swift
//  SwiftUI_Tutorials
//
//  Created by Raghu on 14/04/25.
//

import SwiftUI

struct CreatingAndCombiningView: View {
    var landmark: Landmark
    var body: some View {
        ScrollView {
            VStack{
                MapView(coordinate: landmark.locationCoordinate).frame(height: 300)
                CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(landmark.name).font(.title).foregroundStyle(Color.green)
                    HStack{
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                    
                    Divider()
                    Text("About \(landmark.name)").font(.title2)
                    Text(landmark.description)
                    
                }
                .padding()
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    CreatingAndCombiningView(landmark: landmarks[0])
}
