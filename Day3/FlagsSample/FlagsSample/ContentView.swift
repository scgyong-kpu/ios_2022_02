//
//  ContentView.swift
//  FlagsSample
//
//  Created by Kiyong Kim on 2022/02/09.
//

import SwiftUI

struct ContentView: View {
    let continent = Nations.self.contintents[0]
//    let continents = Nations.self.contintents
    var body: some View {
        List {
            Section(header: Text(continent.region)) {
                ForEach (continent.countries, id: \.name) { country in
                    CountryView(title: country.name, image: country.file)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
