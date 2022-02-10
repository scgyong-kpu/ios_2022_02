//
//  GameView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game = GameModel()
    var body: some View {
        VStack {
            HStack {
                Text("Memory Game")
                Spacer()
                Text("Flips: \(game.flips)")
            }
            GridStack(rows: GameModel.rows, columns: GameModel.cols) { row, col in
                CardView(prefix: "f", card: game.card(row: row, col: col))
                    .gesture(TapGesture().onEnded {
                        game.toggle(row: row, col: col)
                        let card = game.card(row: row, col: col)
                        print("toggle \(row) \(col) \(card.state)")
                    })
            }
            .aspectRatio(CGSize(width: GameModel.cols, height: GameModel.rows), contentMode: .fit)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
