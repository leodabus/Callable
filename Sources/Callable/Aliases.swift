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

public typealias DataAction = (Data) -> Void
public typealias PromiseAction = (Data?, URLResponse?, Error?) -> Void
public typealias DictionaryAction = ([String: Any]) -> Void
public typealias StringAction = (String) -> Void
public typealias ErrorHandler = (Error) -> Void
public typealias AnyHandler = (Any) -> Void
