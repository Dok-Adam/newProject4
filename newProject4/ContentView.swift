//
//  ContentView.swift
//  newProject4
//
//  Created by Адам Дотмерзаев on 09.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State var animateTrigger: Bool = false
    
    var body: some View {
        Button {
            withAnimation(.interpolatingSpring(stiffness: 170, damping: 15)) {
                animateTrigger = true
            } completion: {
                animateTrigger = false
            }
        } label: {
            GeometryReader { proxy in
                let size = proxy.size.width / 2
                
                HStack(alignment: .center, spacing: 0) {
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: animateTrigger ? size : 0)
                        .opacity(animateTrigger ? 1 : 0)
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: size)
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: animateTrigger ? 1 : size)
                        .opacity(animateTrigger ? 0 : 1)
                }
                .frame(maxHeight: .infinity)
            }
            .frame(width: 80, alignment: .center)
        }
        .buttonStyle(CustomButtonStyle())
    }
}

#Preview {
    ContentView()
}
