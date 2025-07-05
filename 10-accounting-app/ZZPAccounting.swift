import Foundation

struct Entry {
  var description: String
  var amount: Double
  var vatRate: Double
}

var incomes: [Entry] = []
var expenses: [Entry] = []

func readDouble(prompt: String) -> Double {
  print(prompt, terminator: "")
  if let input = readLine(), let value = Double(input) {
    return value
  }
  return 0.0
}

func readString(prompt: String) -> String {
  print(prompt, terminator: "")
  if let input = readLine() {
    return input
  }
  return ""
}

func addIncome() {
  let desc = readString(prompt: "Description: ")
  let amount = readDouble(prompt: "Amount (excl. VAT): ")
  let vat = readDouble(prompt: "VAT rate (e.g. 21 for 21%): ")
  incomes.append(Entry(description: desc, amount: amount, vatRate: vat))
  print("Income added.\n")
}

func addExpense() {
  let desc = readString(prompt: "Description: ")
  let amount = readDouble(prompt: "Amount (excl. VAT): ")
  let vat = readDouble(prompt: "VAT rate (e.g. 21 for 21%): ")
  expenses.append(Entry(description: desc, amount: amount, vatRate: vat))
  print("Expense added.\n")
}

func summary() {
  var totalIncome = 0.0
  var totalIncomeVAT = 0.0
  for e in incomes {
    totalIncome += e.amount
    totalIncomeVAT += e.amount * e.vatRate / 100
  }

  var totalExpense = 0.0
  var totalExpenseVAT = 0.0
  for e in expenses {
    totalExpense += e.amount
    totalExpenseVAT += e.amount * e.vatRate / 100
  }

  print("=== Summary ===")
  print("Income: €\(String(format: "%.2f", totalIncome))")
  print("Income VAT collected: €\(String(format: "%.2f", totalIncomeVAT))")
  print("Expenses: €\(String(format: "%.2f", totalExpense))")
  print("Expense VAT paid: €\(String(format: "%.2f", totalExpenseVAT))")
  print("Profit before VAT: €\(String(format: "%.2f", totalIncome - totalExpense))")
  print("Net VAT owed: €\(String(format: "%.2f", totalIncomeVAT - totalExpenseVAT))\n")
}

func menu() {
  print("ZZP Accounting")
  print("1) Add Income")
  print("2) Add Expense")
  print("3) Show Summary")
  print("4) Exit")
}

while true {
  menu()
  let choice = readLine() ?? ""
  switch choice {
  case "1":
    addIncome()
  case "2":
    addExpense()
  case "3":
    summary()
  case "4":
    exit(0)
  default:
    print("Invalid choice.\n")
  }
}

