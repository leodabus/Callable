//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation
#if canImport(Vapor)
import Vapor
#endif

extension String {
    
    public var url: URL? {
        URL(string: self)
    }
}
