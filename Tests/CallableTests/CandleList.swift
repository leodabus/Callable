//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

// MARK: - CandlesList
struct CandlesList: Codable {
    let candles: [Candle]
    let empty: Bool
    let symbol: String
}

// MARK: - Candle
struct Candle: Codable {
    let close, datetime, high, low: Int
    let candleOpen, volume: Int

    enum CodingKeys: String, CodingKey {
        case close, datetime, high, low
        case candleOpen = "open"
        case volume
    }
}
