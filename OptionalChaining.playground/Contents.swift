import Foundation

var swift: String? = "Swift"
let SWIFT: String?

if let swift = swift {
    SWIFT = swift.uppercased()
}
else {
    SWIFT = nil
    fatalError("Cannot uppercased a nil")
}

extension String {
    func toUppercase() -> String? {
        guard !self.isEmpty else {
            return nil
        }
        
        return self.uppercased()
    }
}

let SWIFT1 = swift?.toUppercase()?.lowercased()
print(SWIFT1!)

let numbers = ["fibo6":[0, 1, 1, 2, 3, 5]]
numbers["fibo6"]?[0]

var userInput: String? = nil
let userName = userInput ?? "Mars"

let a: String? = nil
let b: String? = nil
let c: String? = "C"

if let theFirstNonNilString = a ?? b ?? c {
    print(theFirstNonNilString)
}

let one: Int?? = .some(nil)
let two: Int? = 2
let three: Int? = 3

(one ?? two) ?? three
