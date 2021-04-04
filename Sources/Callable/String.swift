//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/3/21.
//

import Foundation

extension String {
    
    public var url: URL? {
        URL(string: self)
    }
}
