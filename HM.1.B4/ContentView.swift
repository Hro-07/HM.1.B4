//
//  ContentView.swift
//  HM.1.B4
//
//  Created by Hrayr on 12/12/23.
//

import SwiftUI


struct ContentView: View {
    @State private var lightColor: TrafficLightColor = .red
    @State private var opacity: Double = 1.0
    @State private var buttonTitle: String = "START"
    
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                RedLight(color: .red.opacity(lightColor == .red ?  opacity: 0.1), opacity: 1)
                    .padding()
                YellowLight(color: .yellow.opacity(lightColor == .yellow ? opacity : 0.1), opacity: 1)
                    .padding()
                GreenLight(color: .green.opacity(lightColor == .green ? opacity : 0.1), opacity: 1)
                    .padding()
                Spacer()
                
                Button(action: {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switch lightColor {
                    case .red:
                        lightColor = .yellow
                    case .yellow:
                        lightColor = .green
                    case .green:
                        lightColor = .red
                    }
                }) {
                    Text(buttonTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .padding()
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
extension ContentView {
    enum TrafficLightColor {
        case red, yellow, green
    }
}
