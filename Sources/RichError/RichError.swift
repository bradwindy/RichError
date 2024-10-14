//
//  RichError.swift
//  RichError
//
//  Created by Bradley Windybank on 10/04/23.
//

import Foundation

/// A simple error protocol for structuring errors. Data can be passed along for use with debugging.
public protocol RichError: Error, Sendable {
    associatedtype ErrorKind: RawRepresentable where ErrorKind.RawValue: StringProtocol

    var data: [String: String] { get }
    var kind: ErrorKind { get }
}
