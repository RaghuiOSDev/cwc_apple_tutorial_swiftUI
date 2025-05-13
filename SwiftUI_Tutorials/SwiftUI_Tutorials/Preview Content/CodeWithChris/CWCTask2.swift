//
//  CWCTask2.swift
//  SwiftUI_Tutorials
//
//  Created by Raghu on 03/05/25.
//

import SwiftUI

struct CWCTask2: View {
    @State private var isFavorited = false
    var body: some View {
        ZStack{
            Image("Breakfast")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("TopGradient")
                    .frame(height: 20,alignment: .top)
                  
                Spacer().edgesIgnoringSafeArea(.bottom)
                Image("BottomGradient")
                    .frame(height: 20,alignment: .bottom)
            }.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("Hardcore \nAvo Toast").font(.title).fontWeight(.bold).foregroundStyle(.white)
                    Spacer()
                    if isFavorited{
                        Image("Heart_health")
                    }
                }.padding(.horizontal, 30.0)
                Spacer()
                if isFavorited{
                    Text("Wowwww... You Liked This Picture>>>>").foregroundStyle(.red)
                }else{
                    Text("Energize with this health and hearty breakfast").foregroundStyle(.white)
                }
            }
            .contentShape(Rectangle())
            .onTapGesture(count: 2) {
                if isFavorited{
                    isFavorited = false
                }else{
                    isFavorited = true
                }
            }
            

        }
    }
}

#Preview {
    CWCTask2()
}
