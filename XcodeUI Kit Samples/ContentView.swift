//
//  ContentView.swift
//  XcodeUI Kit Samples
//
//  Created by Vinod on 3/11/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var isCLicked: Bool =  false
    @State var yOffset : CGFloat = 0
    
    var textColor: Color {
        isCLicked ? .red : .blue
    }
    var body: some View {
        ZStack {
            LinearGradient(colors: [.yellow, .orange], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(textColor)
                    .offset(x: 0, y: yOffset)
                
            }
        }.onTapGesture {
            isCLicked.toggle()
            withAnimation {
                yOffset = isCLicked ? -1000 : 100
            }
             
        }
    }
}

#Preview {
    ContentView()
}
