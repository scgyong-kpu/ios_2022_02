//
//  GameView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GameView: View {
    var game = GameModel()
    var body: some View {
        GridStack(rows: GameModel.rows, columns: GameModel.cols) { row, col in
            CardView(prefix: "f", card: game.card(row: row, col: col))
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
