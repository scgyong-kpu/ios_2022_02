//
//  DetailView.swift
//  MapSample
//
//  Created by Kiyong Kim on 2022/02/11.
//

import SwiftUI
import MapKit

struct DetailView: View {
    let poiItem: PoiItem
    @State var region: MKCoordinateRegion
    init(poiItem: PoiItem) {
        self.poiItem = poiItem
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: poiItem.REFINE_WGS84_LAT, longitude: poiItem.REFINE_WGS84_LOGT), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    }
    var body: some View {
        VStack {
            Text(poiItem.SIGUN_NM)
            Text(poiItem.SIGUN_CD)
            Text(poiItem.REPRSNT_FOOD_NM)
            Map(coordinateRegion: $region)
                .frame(maxWidth:.infinity, maxHeight:.infinity)
        }
        .navigationTitle(poiItem.RESTRT_NM)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(poiItem: PoiData.rows[0])
    }
}
