//
//  GameView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var game = GameModel()
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack {
            HStack {
                Text("Memory Game")
                Spacer()
                Text("Flips: \(game.flips)")
            }
            .padding(.horizontal)
            GridStack(rows: GameModel.rows, columns: GameModel.cols) { row, col in
                CardView(prefix: "f", card: game.card(row: row, col: col))
                    .gesture(TapGesture().onEnded {
                        game.toggle(row: row, col: col)
                        let card = game.card(row: row, col: col)
                        print("toggle \(row) \(col) \(card.state)")
                    })
            }
            .aspectRatio(CGSize(width: GameModel.cols, height: GameModel.rows), contentMode: .fit)
            HStack {
                Spacer()
                Button {
                    present.wrappedValue.dismiss()
                } label: {
                    Text("Back")
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .stroke(lineWidth: 2.0)
                        )
                }
                Spacer()
                Button {
                    
                } label: {
                    Text("Restart")
                        .padding(.horizontal)
                        .padding(.vertical, 5)
                        .background(
                            Capsule()
                                .stroke(lineWidth: 2.0)
                        )
                }
                Spacer()
            }
            Spacer()
        }
        .background(
            LinearGradient(gradient:
                            Gradient(colors: [
                                .white,
                                .blue.opacity(0.5)
                            ]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing
            )
        )
        .navigationBarHidden(true)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
