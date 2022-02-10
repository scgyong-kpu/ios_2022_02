//
//  GridStack.swift
//  MemoryGame
//
//  Created by Kiyong Kim on 2022/02/10.
//

import SwiftUI

struct GridStack: View {
    let rows: Int
    let columns: Int
    var body: some View {
        VStack {
            ForEach (0 ..< rows, id: \.self) { row in
                HStack {
                    ForEach (0 ..< columns, id: \.self) { column in
                        Text("\(column),\(row)")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
            }
        }
    }
}

struct GridStack_Previews: PreviewProvider {
    static var previews: some View {
        GridStack(rows: 4, columns: 3)
    }
}
