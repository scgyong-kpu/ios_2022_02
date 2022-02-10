//
//  GameView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            ForEach (0 ..< 4, id:\.self) { row in
                CardView(prefix: "f", number: 1, open: true)
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
