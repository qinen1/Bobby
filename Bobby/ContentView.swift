//
//  ContentView.swift
//  stick-figure
//
//  Created by YJ Soon on 1/8/25.
//
// refactored
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            StickMan()
                .stroke(lineWidth: 4)
                .foregroundColor(.black)

            // Add more EmojiViews to decorate your Bobby
            EmojiView(symbol: "😜", size: 100, x: 0,  y: -125)
            EmojiView(symbol:"💩", size: 100, x: 0, y: -10)
            EmojiView(symbol:"🦶", size: 80, x: 70, y: -85)
            EmojiView(symbol:"🍷", size: 80, x: -70, y: -85)
        }
        .frame(width: 200, height: 320)
    }
}



/// Reusable emoji decorator
struct EmojiView: View {
    let symbol: String
    let size: CGFloat
    let x: CGFloat
    let y: CGFloat
    var body: some View {
        Text(symbol)
            .font(.system(size: size))
            .offset(x: x, y: y)
    }
}


#Preview {
    ContentView()
}
