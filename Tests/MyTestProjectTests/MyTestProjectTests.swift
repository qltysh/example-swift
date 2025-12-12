import XCTest
@testable import MyTestProject

final class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    override func setUp() {
        super.setUp()
        calculator = Calculator()
    }

    override func tearDown() {
        calculator = nil
        super.tearDown()
    }

    func testAdd() {
        XCTAssertEqual(calculator.add(2, 3), 5)
        XCTAssertEqual(calculator.add(-1, 1), 0)
        XCTAssertEqual(calculator.add(0, 0), 0)
    }

    func testMultiply() {
        XCTAssertEqual(calculator.multiply(4, 5), 20)
        XCTAssertEqual(calculator.multiply(-2, 3), -6)
        XCTAssertEqual(calculator.multiply(0, 100), 0)
    }

    func testSubtract() {
        XCTAssertEqual(calculator.subtract(10, 3), 7)
        XCTAssertEqual(calculator.subtract(5, 5), 0)
    }

    func testDivide() {
        XCTAssertEqual(calculator.divide(10, 2), 5)
        XCTAssertEqual(calculator.divide(9, 3), 3)
    }

    func testDivideByZero() {
        XCTAssertNil(calculator.divide(10, 0))
    }
}
