//
//  CardView.swift
//  SwiftUI_Tutorials
//
//  Created by Raghu on 13/05/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Image("cherry").resizable().aspectRatio(1, contentMode: .fit)
            .background(Color.white.opacity(0.5)).cornerRadius(20)
    }
}

#Preview {
    CardView()
}
