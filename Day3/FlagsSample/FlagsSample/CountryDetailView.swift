//
//  CountryDetailView.swift
//  FlagsSample
//
//  Created by Kiyong Kim on 2022/02/09.
//

import SwiftUI

struct CountryDetailView: View {
    let country: (name: String, file: String)
    var body: some View {
        VStack {
            List {
                Image(country.file)
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                Text("\(country.name.count * 1433283)")
                    .foregroundColor(.brown)
                    .font(.headline)
                ForEach(1...10, id:\.self) { num in
                    Text("Something \(num)")
                }
            }
        }
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(country: (name:"대한민국 ", file:"south_korea"))
    }
}
