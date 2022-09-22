// Quadratic Formula 📈
// Sonny Li

var a: Double = 6
var b: Double = -7
var c: Double = -3

var root1: Double
var root2: Double

// The positive root
root1 = (-b + (b*b - 4*a*c).squareRoot()) / (2*a)

// The negative root
root2 = (-b - (b*b - 4*a*c).squareRoot()) / (2*a)

// Outputting the roots
print("Root 1 is \(root1)")
print("Root 2 is \(root2)")

========
var a: Double = 2.0
var b: Double = 5.0
var c: Double = 3.0
var x1: Double = 0
var x2: Double = 0
var delta: Double = ((b*b) - (4*a*c)) * ((b*b) - 4*a*c)
delta = delta.squareRoot()
x1 = (-b - delta)/(2*a)
x2 = (-b + delta)/(2*a)
print("x1 is \(x1)")
print("X2 is \(x2)")
