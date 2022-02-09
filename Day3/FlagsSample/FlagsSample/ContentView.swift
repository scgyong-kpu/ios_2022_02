//
//  ContentView.swift
//  FlagsSample
//
//  Created by Kiyong Kim on 2022/02/09.
//

import SwiftUI


struct ContentView: View {
//    let continent = Nations.self.contintents[0]
    let continents = Nations.self.contintents
    var body: some View {
        NavigationView {
            List {
                ForEach(continents, id: \.region) { continent in
                    Section(header: Text(continent.region)) {
                        ForEach (continent.countries, id: \.name) { country in
                            NavigationLink(destination: {
                                Text(country.name)
                            }) {
                                CountryView(country: country)
                            }
                        }
                    }
                }
            }
            .navigationBarTitle(Text("All Counties"))
        }
        .onAppear {
            let color = UIColor.blue.lighter()
            UINavigationBar.appearance().barTintColor = color
            UINavigationBar.appearance().backgroundColor = color
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
