//
//  CountryView.swift
//  FlagsSample
//
//  Created by Kiyong Kim on 2022/02/09.
//

import SwiftUI

struct CountryView: View {
    let title: String
    let image: String
    var body: some View {
        HStack() {
            Image(image)
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
            Text(title)
                .frame(alignment:.leading)
        }
        .frame(height:64)
        .frame(maxWidth:.infinity)
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView(title: "대한민국", image: "south_korea")
    }
}
