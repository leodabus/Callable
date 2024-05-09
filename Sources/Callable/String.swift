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

extension String {
    
    public var url: URL? {
        URL(string: self)
    }
}
