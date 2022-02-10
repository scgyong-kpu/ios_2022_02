//
//  GameView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        GridStack(rows: 4, columns: 3) { row, col in
            CardView(prefix: "f", number: (row+1), open: true)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
