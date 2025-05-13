//
//  LandmarkList.swift
//  SwiftUI_Tutorials
//
//  Created by Raghu on 27/04/25.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = true
    
    var filteredLandmarks: [Landmark]{
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List(filteredLandmarks) { landmark in
                NavigationLink{
                    CreatingAndCombiningView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
