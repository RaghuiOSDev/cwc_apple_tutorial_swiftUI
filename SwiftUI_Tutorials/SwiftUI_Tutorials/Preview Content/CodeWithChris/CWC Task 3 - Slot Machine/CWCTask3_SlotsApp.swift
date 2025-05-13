//
//  CWCTask3_SlotsApp.swift
//  SwiftUI_Tutorials
//
//  Created by Raghu on 06/05/25.
//

import SwiftUI

struct CWCTask3_SlotsApp: View {
    
    private var symbols = ["apple","star","cherry"]
    @State private var num = [2,1,0]
    @State  private var credits = 1000
    private var betAmount = 5
    var body: some View {
        ZStack{
            Rectangle().foregroundStyle(Color(.lightGray))
                .edgesIgnoringSafeArea(.all)
            Rectangle().foregroundStyle(Color(.systemOrange))
                .rotationEffect(Angle(degrees: 45))
                .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                HStack{
                    Image(systemName: "star.fill").foregroundStyle(Color.yellow)
                    Text("SwiftUI Slots!").foregroundStyle(Color.white)
                    Image(systemName: "star.fill").foregroundStyle(Color.yellow)
                }.scaleEffect(2)
                Spacer()
                Text("Credit: " + String(credits)).padding(.all,10).background(Color.white.opacity(0.5))
                    .cornerRadius(20.0)
                Spacer()
                HStack {
                    Spacer()
                    CardView()
                    CardView()
                    CardView()
                    Spacer()
                }
                Spacer()
                Button {
                    //Print
                    self.num[0] = Int.random(in: 0...self.symbols.count - 1)
                    self.num[1] = Int.random(in: 0...self.symbols.count - 1)
                    self.num[2 ] = Int.random(in: 0...self.symbols.count - 1)
                    
                    if self.num[0] == self.num[1] && self.num[1] == self.num[2]{
                        self.credits += self.betAmount * 10
                    }else {
                        self.credits -= self.betAmount
                    }
                } label: {
                    Text("Spin")
                        .bold()
                        .foregroundStyle(Color.white)
                        .padding(.all, 10)
                        .padding([.leading,.trailing], 30)
                        .background(Color.pink)
                        .clipShape(.rect(cornerRadius: 20))
                }
                Spacer()
            }
        }
       
    }
}

#Preview {
    CWCTask3_SlotsApp()
}
