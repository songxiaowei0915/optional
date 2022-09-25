import Foundation

extension Optional {
    func myMap<T>(_ transform: (Wrapped)-> T) -> T? {
        if let value = self {
            return transform(value)
        }
        
        return nil
    }
    
    func myFlatMap<T>(_ transform: (Wrapped)-> T?) -> T? {
        if let value = self, let mapped = transform(value) {
            return mapped
        }
        
        return nil
    }
}

extension Array {
    func reduce(_ nextResult: (Element, Element) -> Element) -> Element? {
//        guard let first = first else {
//            return nil
//        }
//
//        return dropFirst().reduce(first, nextResult)
        return first.map {
            dropFirst().reduce($0, nextResult)
        }
    }
}

let swift: String? = "swift"
var SWIFFT: String? = swift.myMap { $0.uppercased()}
print(SWIFFT!)
//if let swift = swift {
//    SWIFFT = swift.uppercased()
//}

let numbers = [1, 2, 3, 4]
let sum = numbers.reduce(+)
print("\(String(describing: sum))")

let stringOne: String? = "1"
let ooo = stringOne.flatMap { Int($0) }
print(type(of: ooo))

if let stringOne = stringOne, let o = Int(stringOne) {
    print(o)
    print(type(of: o))
}

let o = stringOne.myFlatMap { Int($0) }
print(o)
print(type(of: o))

extension Sequence {
    func myFlatMap<T>(_ transfom: (Iterator.Element)->T?) -> [T] {
        return self.map(transfom)
            .filter({$0 != nil})
            .map({$0!})
    }
}

let ints = ["1", "2", "3", "4", "five"]
var all = 0

for case let int? in ints.map({Int($0)}) {
    all += int
}
print(all)

let intss = ints.myFlatMap({Int($0)})
all = intss.reduce(+)!

