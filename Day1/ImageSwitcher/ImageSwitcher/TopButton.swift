//
//  TopButton.swift
//  ImageSwitcher
//
//  Created by Kiyong Kim on 2022/02/08.
//

import SwiftUI

struct TopButton: View {
    var image: String
    var action: ()->Void
    var enablesIf: ()->Bool
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: image)
                .resizable()
                .foregroundColor(enablesIf() ? .green : .gray)
                .frame(width: 60, height: 60, alignment: .center)
                .padding(8)
        }.disabled(!enablesIf())
    }
}

struct TopButton_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TopButton(image: "arrow.left.circle", action: {}, enablesIf: { true })
            TopButton(image: "arrow.right.circle", action: {}, enablesIf: { true })
            TopButton(image: "arrow.left.circle", action: {}, enablesIf: { false })
            TopButton(image: "arrow.right.circle", action: {}, enablesIf: { false })
        }
    }
}

