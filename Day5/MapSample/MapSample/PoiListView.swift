//
//  PoiListView.swift
//  MapSample
//
//  Created by Kiyong Kim on 2022/02/11.
//

import SwiftUI

struct PoiListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(PoiData.rows, id: \.REPRSNT_FOOD_NM) { row in
                    NavigationLink(destination: Text(row.REPRSNT_FOOD_NM)) {
                        Text(row.REPRSNT_FOOD_NM)
                    }
                }
            }
        }
    }
}

struct PoiListView_Previews: PreviewProvider {
    static var previews: some View {
        PoiListView()
    }
}
