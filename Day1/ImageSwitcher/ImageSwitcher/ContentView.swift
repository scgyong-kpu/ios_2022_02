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
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left.circle")
                    .resizable()
                    .modifier(TopButtonMod())
                Spacer()
                Text("3/5")
//                    .frame(maxWidth:.infinity)
                    .font(.largeTitle)
                Spacer()
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .modifier(TopButtonMod())

            }
            Image("cat1")
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
