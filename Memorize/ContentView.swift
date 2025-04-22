//
//  ContentView.swift
//  Memorize
//
//  Created by Henrique Batista on 22/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
            CardView()
            CardView()
        }
        .foregroundColor(Color.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let rectangle = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                rectangle.foregroundColor(Color.white)
                rectangle.strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
            } else {
                rectangle
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
