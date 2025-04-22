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
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(Color.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 3)
                Text("👻").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
            
        }
    }
}

#Preview {
    ContentView()
}
