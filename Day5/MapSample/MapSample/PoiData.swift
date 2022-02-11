//
//  PoiData.swift
//  MapSample
//
//  Created by Kiyong Kim on 2022/02/11.
//

import Foundation

struct PoiItem {
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
struct PoiData {
    static let rows = [
        PoiItem(
          SIGUN_NM: "의정부시",
          SIGUN_CD: "41150",
          RESTRT_NM: "핏제리아 루카",
          REPRSNT_FOOD_NM: "마르게리따 피자",
          TASTFDPLC_TELNO: "031-851-3589",
          REFINE_LOTNO_ADDR: "경기도 의정부시 민락동 776-2번지",
          REFINE_ROADNM_ADDR: "경기도 의정부시 송현로82번길 17",
          REFINE_ZIP_CD: "11813",
          REFINE_WGS84_LOGT: 127.0904053,
          REFINE_WGS84_LAT: 37.7454846
        ),
        PoiItem(
          SIGUN_NM: "이천시",
          SIGUN_CD: "41500",
          RESTRT_NM: "증포설렁탕",
          REPRSNT_FOOD_NM: "설렁탕, 도가니탕",
          TASTFDPLC_TELNO: "031-635-7877",
          REFINE_LOTNO_ADDR: "경기도 이천시 증포동 368번지",
          REFINE_ROADNM_ADDR: "경기도 이천시 증신로 166",
          REFINE_ZIP_CD: "17346",
          REFINE_WGS84_LOGT: 127.4512903,
          REFINE_WGS84_LAT: 37.2902983
        ),
        PoiItem(
          SIGUN_NM: "이천시",
          SIGUN_CD: "41500",
          RESTRT_NM: "도락",
          REPRSNT_FOOD_NM: "웰빙쌀밥정식",
          TASTFDPLC_TELNO: "031-638-3020",
          REFINE_LOTNO_ADDR: "경기도 이천시 신둔면 소정리 49-1번지",
          REFINE_ROADNM_ADDR: "경기도 이천시 신둔면 황무로 485",
          REFINE_ZIP_CD: "17304",
          REFINE_WGS84_LOGT: 127.4029104,
          REFINE_WGS84_LAT: 37.3029868
        ),
     ]
}
