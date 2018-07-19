//
//  Spy+Shared.swift
//  Spy
//
//  Copyright (c) 2018 Jason Nam (https://jasonnam.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

public extension Spy {

    /// Log message with `default` type.
    ///
    /// - Parameter message: Log message.
    public static func log(_ message: StringLiteralType) {
        shared.log(message)
    }

    /// Log message with `info` type.
    ///
    /// - Parameter message: Log message.
    public static func info(_ message: StringLiteralType) {
        shared.info(message)
    }

    /// Log message with `debug` type.
    ///
    /// - Parameter message: Log message.
    public static func debug(_ message: StringLiteralType) {
        shared.debug(message)
    }

    /// Log message with `error` type.
    ///
    /// - Parameter message: Log message.
    public static func error(_ message: StringLiteralType) {
        shared.error(message)
    }

    /// Log message with `fault` type.
    ///
    /// - Parameter message: Log message.
    public static func fault(_ message: StringLiteralType) {
        shared.fault(message)
    }
}
