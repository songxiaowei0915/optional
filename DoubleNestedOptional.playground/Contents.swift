import Foundation

let stringOnes: [String] = ["1", "one"]
let intOnes = stringOnes.map{ Int($0)}

intOnes.forEach { print($0 as Any) }

var i = intOnes.makeIterator()

while let i = i.next() {
    print(i as Any)
}

for case let one? in intOnes {
    print(one)
}

for case nil in intOnes {
    print("got a nil value")
}
