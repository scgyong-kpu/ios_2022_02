//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/02/07.
//

import SwiftUI

struct ContentView: View {
    @State var page = 1
    let total = 6
    var body: some View {
        VStack {
            HStack {
                TopButton(image: "arrow.left.circle") {
                    page -= 1
                } enablesIf: {
                    page > 1
                }

                Spacer()
                Text("\(page)/\(total)")
//                    .frame(maxWidth:.infinity)
                    .font(.largeTitle)
                Spacer()

                TopButton(image: "arrow.right.circle") {
                    page += 1
                } enablesIf: {
                    page < total
                }

            }
            Image("cat\(page)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
