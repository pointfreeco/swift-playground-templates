import XCTest

private func emoji(for bool: Bool) -> Character {
  return bool ? "✅" : "❌"
}

extension XCTestCase {
  public func XCTAssert(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    let result = try expression()
    Shim.Assert(result, message, file: file, line: line)
    return emoji(for: result)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where U: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: FloatingPoint {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 == result2)
  }

  public func XCTAssertFalse(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    let result = try expression()
    Shim.AssertFalse(result, message, file: file, line: line)
    return emoji(for: result == false)
  }

  public func XCTAssertGreaterThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Comparable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertGreaterThan(result1, result2, message, file: file, line: line)
    return emoji(for: result1 > result2)
  }

  public func XCTAssertGreaterThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Comparable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertGreaterThanOrEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 >= result2)
  }

  public func XCTAssertLessThan<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Comparable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertLessThan(result1, result2, message, file: file, line: line)
    return emoji(for: result1 < result2)
  }

  public func XCTAssertLessThanOrEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Comparable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertLessThanOrEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 <= result2)
  }

  public func XCTAssertNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    let result = try expression()
    Shim.AssertNil(result, message, file: file, line: line)
    return emoji(for: result == nil)
  }

  public func XCTAssertNoThrow<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    do {
      _ = try expression()
      return emoji(for: true)
    } catch {
      let throwing = { throw error }
      try Shim.AssertNoThrow(throwing(), message, file: file, line: line)
      return emoji(for: false)
    }
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T?, _ expression2: @autoclosure () throws -> T?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> ContiguousArray<T>, _ expression2: @autoclosure () throws -> ContiguousArray<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> ArraySlice<T>, _ expression2: @autoclosure () throws -> ArraySlice<T>, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> [T], _ expression2: @autoclosure () throws -> [T], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T, U>(_ expression1: @autoclosure () throws -> [T: U], _ expression2: @autoclosure () throws -> [T: U], _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where U: Equatable {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotEqual<T>(_ expression1: @autoclosure () throws -> T, _ expression2: @autoclosure () throws -> T, accuracy: T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character where T: FloatingPoint {
    let (result1, result2) = try (expression1(), expression2())
    Shim.AssertNotEqual(result1, result2, message, file: file, line: line)
    return emoji(for: result1 != result2)
  }

  public func XCTAssertNotNil(_ expression: @autoclosure () throws -> Any?, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    let result = try expression()
    Shim.AssertNotNil(result, message, file: file, line: line)
    return emoji(for: result != nil)
  }

  public func XCTAssertThrowsError<T>(_ expression: @autoclosure () throws -> T, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line, _ errorHandler: (Error) -> Swift.Void = { _ in }) rethrows -> Character {
    do {
      _ = try expression()
      return emoji(for: false)
    } catch {
      let throwing = { throw error }
      try Shim.AssertThrowsError(throwing(), message, file: file, line: line, errorHandler)
      return emoji(for: true)
    }
  }

  public func XCTAssertTrue(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line) rethrows -> Character {
    let result = try expression()
    Shim.AssertTrue(result, message, file: file, line: line)
    return emoji(for: result)
  }

  public func XCTFail(_ message: String = "", file: StaticString = #file, line: UInt = #line) -> Character {
    Shim.Fail(message, file: file, line: line)
    return emoji(for: false)
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
