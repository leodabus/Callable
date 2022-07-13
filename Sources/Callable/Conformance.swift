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

public typealias DownloadCompletion = (URL?, URLResponse?, Error?) -> Void

extension URL: ProvidesSessionDownloadDataTask {
    
    public func session(_ downloadCompletion: @escaping DownloadCompletion) -> URLSessionDownloadTask {
        URLSession.shared.downloadTask(with: self, completionHandler: downloadCompletion)
    }
    
    private func sessionDownloadTask(provideData: DataAction?) -> URLSessionDownloadTask {
        session { url, response, error in
            guard let data = url?.data else {
                errorPrint()
                provideData?("error: \(error?.localizedDescription ?? "nil")".data(using: .utf8)!)
                return
            }
            provideData?(data)
        }
    }
    
    private func errorPrint() {
        print("ERROR: data was nil for the call from: \(self), ")
    }
}


extension URL {
    
    var data: Data?  {
        do {
            return try Data(contentsOf: self, options: .mappedIfSafe)
        } catch {
            print(error.localizedDescription)
            return nil
        }
    }
    
    public func callLocalCodable<T: Codable>(expressive: Bool = false, _ action: (T?)->Void) throws {
        action(try Data(contentsOf: self, options: .mappedIfSafe).codable())
    }

    public func localCodable<T: Codable>() throws -> T? {
        try Data(contentsOf: self, options: .mappedIfSafe).codable()
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
