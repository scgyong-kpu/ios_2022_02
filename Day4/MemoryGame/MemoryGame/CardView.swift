//
//  CardView.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct CardView: View {
    let prefix: String
    let number: Int
    let open: Bool
    var body: some View {
        Image(imageName)
    }
    var imageName: String {
        if !open { return prefix + "_back" }
        let name = prefix + String(format: "_%02d_01", number)
        return name
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                CardView(prefix: "f", number: 1, open: true)
                CardView(prefix: "f", number: 1, open: false)
            }
            HStack {
                CardView(prefix: "f", number: 2, open: true)
                CardView(prefix: "f", number: 2, open: false)
            }
        }
    }
}
