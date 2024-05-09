//
//  Data.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif


extension Data {
    
    public func jsonDictionary() throws -> [String: Any] {
        guard let unwrappedJson = try JSONSerialization.jsonObject(with: self, options: []) as? [String: Any] else {
            throw GenericError(text: "Warning: we were able to serialize the json but not cast it a [String: Any]...This would seem imposible without catching an error.")
        }
        return unwrappedJson
    }

    public func decodedObject<T: Decodable>(using decoder: JSONDecoder = JSONDecoder()) throws -> T {
        if T.self == Data.self, let data = self as? T {
            return data
        }
        return try JSONDecoder().decode(T.self, from: self)
    }

    func codable<T: Codable>() -> T? {
        T(self)
    }
}
