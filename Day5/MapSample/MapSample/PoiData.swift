//
//  PoiData.swift
//  MapSample
//
//  Created by Kiyong Kim on 2022/02/11.
//

import Foundation
class PoiItem: Codable {
    let SIGUN_NM: String
    let SIGUN_CD: String
    let RESTRT_NM: String
    let REPRSNT_FOOD_NM: String
    let TASTFDPLC_TELNO: String
    let REFINE_LOTNO_ADDR: String
    let REFINE_ROADNM_ADDR: String
    let REFINE_ZIP_CD: String
    let REFINE_WGS84_LOGT: Double
    let REFINE_WGS84_LAT: Double
}

class PoiData: ObservableObject {
    @Published var rows = [PoiItem]()
    func startLoading() {
        
    }
}
