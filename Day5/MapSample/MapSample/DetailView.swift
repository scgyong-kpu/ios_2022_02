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
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: poiItem.REFINE_WGS84_LAT, longitude: poiItem.REFINE_WGS84_LOGT), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    }
    var body: some View {
        GeometryReader { gr in
            ScrollView(.vertical) {
                VStack(alignment:.leading) {
                    VStack(alignment:.leading) {
                        HStack {
                            Image(systemName: "tram.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(poiItem.SIGUN_NM)
                        }
                        HStack {
                            Image(systemName: "location.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(poiItem.SIGUN_CD)
                        }
                        HStack {
                            Image(systemName: "fork.knife.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Text(poiItem.REPRSNT_FOOD_NM)
                        }
                        HStack {
                            Image(systemName: "phone.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                            Button {
                                let strUrl = "tel://" + poiItem.TASTFDPLC_TELNO
                                guard let url = URL(string: strUrl) else { return }
                                UIApplication.shared.open(url)
                            } label: {
                                Text(poiItem.TASTFDPLC_TELNO)
                            }
                        }
                    }
                    .padding()

                   Map(coordinateRegion: $region)
                        .frame(
                            width: gr.size.width,
                            height: gr.size.height / 2
                        )
                }
                .navigationTitle(poiItem.RESTRT_NM)
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(poiItem: PoiData.rows[0])
        }
    }
}
