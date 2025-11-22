import Foundation

struct Calculator {
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }

    func subtract(_ a: Double, _ b: Double) -> Double {
        return a - b
    }

    func multiply(_ a: Double, _ b: Double) -> Double {
        return a * b
    }

    func divide(_ a: Double, _ b: Double) -> Double? {
        guard b != 0 else { return nil }
        return a / b
    }

    func calculate(_ operation: String, _ a: Double, _ b: Double) -> Double? {
        switch operation {
        case "+":
            return add(a, b)
        case "-":
            return subtract(a, b)
        case "*":
            return multiply(a, b)
        case "/":
            return divide(a, b)
        default:
            return nil
        }
    }
}
