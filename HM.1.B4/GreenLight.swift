//
//  GreenLight.swift
//  HM.1.B4
//
//  Created by Hrayr on 12/12/23.
//

import SwiftUI

struct GreenLight: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}

#Preview {
    GreenLight(color: .green, opacity: 1)
}










