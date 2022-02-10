//
//  ContentView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(prefix: "f", number: 1, open: true)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
