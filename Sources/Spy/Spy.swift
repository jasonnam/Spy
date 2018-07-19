//
//  Spy.swift
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
import os

/// Spy. os_log wrapper.
open class Spy {

    /// OSLog object defining
    /// subsystem and category.
    public let log: OSLog

    /// Spy log global availability.
    /// Every instance of Spy is affected.
    public private(set) static var enabled = false
    /// Shared Spy logger instance
    /// with default OSLog object.
    public static let shared = Spy()

    /// Initialize Spy with
    /// default OSLog object.
    public init() {
        log = .default
    }

    /// Initialize Spy with subsystem and category.
    ///
    /// - Parameters:
    ///   - subsystem: An identifier string n reverse DNS notation.
    ///                For example, `com.your_company.your_subsystem_name`.
    ///   - category: A category for the logging subsystem.
    public init(subsystem: String, category: String) {
        log = OSLog(subsystem: subsystem, category: category)
    }

    /// Enable Spy globally.
    public static func enable() {
        enabled = true
    }

    /// Disable Spy globally.
    public static func disable() {
        enabled = false
    }

    /// Log message with `default` type.
    ///
    /// - Parameter message: Log message.
    open func log(_ message: StringLiteralType) {
        osLog(type: .default, message: message)
    }

    /// Log message with `info` type.
    ///
    /// - Parameter message: Log message.
    open func info(_ message: StringLiteralType) {
        osLog(type: .info, message: message)
    }

    /// Log message with `debug` type.
    ///
    /// - Parameter message: Log message.
    open func debug(_ message: StringLiteralType) {
        osLog(type: .debug, message: message)
    }

    /// Log message with `error` type.
    ///
    /// - Parameter message: Log message.
    open func error(_ message: StringLiteralType) {
        osLog(type: .error, message: message)
    }

    /// Log message with `fault` type.
    ///
    /// - Parameter message: Log message.
    open func fault(_ message: StringLiteralType) {
        osLog(type: .fault, message: message)
    }

    /// Log message with `os_log` function.
    ///
    /// - Parameters:
    ///   - type: Log type.
    ///   - message: Log message.
    open func osLog(type: OSLogType, message: StringLiteralType) {
        guard Spy.enabled else { return }
        os_log("%@", log: log, type: type, message)
    }
}
