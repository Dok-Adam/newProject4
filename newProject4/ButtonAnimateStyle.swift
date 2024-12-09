//
//  ButtonAnimateStyle.swift
//  newProject4
//
//  Created by Адам Дотмерзаев on 09.12.2024.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.86 : 1)
            .background(
                Circle()
                    .fill(Color.black.opacity(configuration.isPressed ? 0.3 : 0))
                    .scaleEffect(configuration.isPressed ? 1.5 : 1)
                    .animation(.easeOut(duration: 0.22), value: configuration.isPressed)
            )
            .animation(.easeIn(duration: 0.22), value: configuration.isPressed)
    }
}


