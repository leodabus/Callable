//
//  Decodable.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation
#if canImport(Vapor)
import Vapor
#endif

extension Decodable {
    
    public init?(d: Data?) {
        guard let data = d,
              let s = Self(data) else { return nil }
        self = s
    }

    public init?(_ data: Data) {
        do {
            self = try JSONDecoder().decode(Self.self, from: data)
        } catch {
            print(error)
            return nil
        }
    }
}
