//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: GameView()) {
                Text("Start Game")
            }
            .navigationBarTitle(Text("Memory Game"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
.previewInterfaceOrientation(.portrait)
    }
}
