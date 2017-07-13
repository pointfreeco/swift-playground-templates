import XCTest

#if os(iOS)
  import UIKit
  public typealias Color = UIColor
#elseif os(macOS)
  import Cocoa
  public typealias Color = NSColor
#endif

private func color(for bool: Bool) -> Color {
  return bool ? .green : .red
}

extension XCTestCase {
  public func XCTAssert(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = try expression()
    Shim.Assert(result, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where U: Equatable {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: FloatingPoint {
    let result = try expression1() == expression2()
    Shim.AssertEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertFalse(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = try expression() == false
    Shim.AssertFalse(expression, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertGreaterThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Comparable {
    let result = try expression1() > expression2()
    Shim.AssertGreaterThan(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertGreaterThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Comparable {
    let result = try expression1() >= expression2()
    Shim.AssertGreaterThanOrEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertLessThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Comparable {
    let result = try expression1() < expression2()
    Shim.AssertLessThan(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertLessThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Comparable {
    let result = try expression1() <= expression2()
    Shim.AssertLessThanOrEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = try expression() == nil
    Shim.AssertNil(expression, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNoThrow<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = (try? expression()) == nil
    Shim.AssertNoThrow(expression, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where U: Equatable {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color where T: FloatingPoint {
    let result = try expression1() != expression2()
    Shim.AssertNotEqual(expression1, expression2, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertNotNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = try expression() != nil
    Shim.AssertNil(expression, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTAssertThrowsError<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line, _ errorHandler: (Error) -> Swift.Void = { _ in }) rethrows -> Color {
    let result = (try? expression()) != nil
    Shim.AssertThrowsError(expression, message, file: file, line: line, errorHandler)
    return color(for: result)
  }

  public func XCTAssertTrue(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Color {
    let result = try expression()
    Shim.AssertTrue(expression, message, file: file, line: line)
    return color(for: result)
  }

  public func XCTFail(_ message: String = "", file: StaticString = #file, line: UInt = #line) -> Color {
    Shim.Fail(message, file: file, line: line)
    return color(for: false)
  }
}

private enum Shim {
  static func Assert(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows {
    XCTAssert(expression, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where U: Equatable {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: FloatingPoint {
    XCTAssertEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertFalse(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertFalse(expression, message, file: file, line: line)
  }

  static func AssertGreaterThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Comparable {
    XCTAssertGreaterThan(expression1, expression2, message, file: file, line: line)
  }

  static func AssertGreaterThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Comparable {
    XCTAssertGreaterThanOrEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertLessThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Comparable {
    XCTAssertLessThan(expression1, expression2, message, file: file, line: line)
  }

  static func AssertLessThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Comparable {
    XCTAssertLessThanOrEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertNil(expression, message, file: file, line: line)
  }

  static func AssertNoThrow<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertNoThrow(expression, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where U: Equatable {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) where T: FloatingPoint {
    XCTAssertNotEqual(expression1, expression2, message, file: file, line: line)
  }

  static func AssertNotNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertNotNil(expression, message, file: file, line: line)
  }

  static func AssertThrowsError<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line, _ errorHandler: (Error) -> Swift.Void = { _ in }) {
    XCTAssertThrowsError(expression, message, file: file, line: line, errorHandler)
  }

  static func AssertTrue(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) {
    XCTAssertTrue(expression, message, file: file, line: line)
  }

  static func Fail(_ message: String = "", file: StaticString = #file, line: UInt = #line) {
    XCTFail(message, file: file, line: line)
  }
}
