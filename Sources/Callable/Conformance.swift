//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation

extension URL: Callable {
    
    public func session(_ promiseAction: @escaping PromiseAction) -> URLSessionDataTask {
        URLSession.shared.dataTask(with: self, completionHandler: promiseAction)
    }
}

extension URL {
    
    public func callLocalCodable<T: Codable>(expressive: Bool = false, _ action: (T?)->Void) throws {
        action(try Data(contentsOf: self, options: .mappedIfSafe).codable())
    }
}

extension URLRequest: Callable {

    public var absoluteString: String {
        url?.absoluteString ?? "This request has no URL"
    }

    public func session(_ promiseAction: @escaping PromiseAction) -> URLSessionDataTask {
        URLSession.shared.dataTask(with: self, completionHandler: promiseAction)
    }
}