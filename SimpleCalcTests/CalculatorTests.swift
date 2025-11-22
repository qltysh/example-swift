import XCTest
@testable import SimpleCalcLib

final class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    override func setUpWithError() throws {
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        calculator = nil
    }

    func testAddition() throws {
        let result = calculator.add(5, 3)
        XCTAssertEqual(result, 8, "5 + 3 should equal 8")
    }

    func testSubtraction() throws {
        let result = calculator.subtract(10, 4)
        XCTAssertEqual(result, 6, "10 - 4 should equal 6")
    }

    func testMultiplication() throws {
        let result = calculator.multiply(3, 7)
        XCTAssertEqual(result, 21, "3 * 7 should equal 21")
    }

    func testDivision() throws {
        let result = calculator.divide(15, 3)
        XCTAssertEqual(result, 5, "15 / 3 should equal 5")
    }

    func testDivisionByZero() throws {
        let result = calculator.divide(10, 0)
        XCTAssertNil(result, "Division by zero should return nil")
    }

    func testCalculateWithAddition() throws {
        let result = calculator.calculate("+", 8, 2)
        XCTAssertEqual(result, 10, "8 + 2 should equal 10")
    }

    func testCalculateWithSubtraction() throws {
        let result = calculator.calculate("-", 8, 2)
        XCTAssertEqual(result, 6, "8 - 2 should equal 6")
    }

    func testCalculateWithMultiplication() throws {
        let result = calculator.calculate("*", 8, 2)
        XCTAssertEqual(result, 16, "8 * 2 should equal 16")
    }

    func testCalculateWithDivision() throws {
        let result = calculator.calculate("/", 8, 2)
        XCTAssertEqual(result, 4, "8 / 2 should equal 4")
    }

    func testCalculateWithInvalidOperation() throws {
        let result = calculator.calculate("%", 8, 2)
        XCTAssertNil(result, "Invalid operation should return nil")
    }

    func testCalculateWithDivisionByZero() throws {
        let result = calculator.calculate("/", 10, 0)
        XCTAssertNil(result, "Division by zero should return nil")
    }

    func testAdditionWithNegativeNumbers() throws {
        let result = calculator.add(-5, -3)
        XCTAssertEqual(result, -8, "-5 + -3 should equal -8")
    }

    func testMultiplicationWithZero() throws {
        let result = calculator.multiply(5, 0)
        XCTAssertEqual(result, 0, "5 * 0 should equal 0")
    }

    func testAdditionWithDecimals() throws {
        let result = calculator.add(2.5, 3.7)
        XCTAssertEqual(result, 6.2, accuracy: 0.001, "2.5 + 3.7 should equal 6.2")
    }
}
