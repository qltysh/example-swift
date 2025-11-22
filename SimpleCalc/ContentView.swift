import SwiftUI

struct ContentView: View {
    @State private var firstNumber: String = "10"
    @State private var secondNumber: String = "5"
    @State private var selectedOperation: String = "+"
    @State private var result: String = ""

    let calculator = Calculator()
    let operations = ["+", "-", "*", "/"]

    var body: some View {
        VStack(spacing: 20) {
            Text("Simple Calculator")
                .font(.largeTitle)
                .padding()

            HStack {
                TextField("First Number", text: $firstNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .frame(width: 100)

                Picker("Operation", selection: $selectedOperation) {
                    ForEach(operations, id: \.self) { operation in
                        Text(operation).tag(operation)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .frame(width: 150)

                TextField("Second Number", text: $secondNumber)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
                    .frame(width: 100)
            }
            .padding()

            Button(action: performCalculation) {
                Text("Calculate")
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            if !result.isEmpty {
                Text("Result: \(result)")
                    .font(.title)
                    .padding()
                    .foregroundColor(.green)
            }

            Spacer()
        }
        .padding()
        .onAppear {
            performCalculation()
        }
    }

    func performCalculation() {
        guard let first = Double(firstNumber),
              let second = Double(secondNumber) else {
            result = "Invalid input"
            return
        }

        if let calculatedResult = calculator.calculate(selectedOperation, first, second) {
            result = String(format: "%.2f", calculatedResult)
        } else {
            result = "Error"
        }
    }
}

#Preview {
    ContentView()
}
