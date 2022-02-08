//
//  ContentView.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/02/07.
//

import SwiftUI

struct TopButtonMod : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 60, height: 60, alignment: .center)
            .padding(8)
    }
}
struct ContentView: View {
    @State var page = 1
    var body: some View {
        VStack {
            HStack {
                Button {
                    page -= 1
                } label: {
                    Image(systemName: "arrow.left.circle")
                        .resizable()
                        .modifier(TopButtonMod())
                }
                Spacer()
                Text("\(page)/5")
//                    .frame(maxWidth:.infinity)
                    .font(.largeTitle)
                Spacer()
                Button {
                    page += 1
                } label: {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .modifier(TopButtonMod())
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
