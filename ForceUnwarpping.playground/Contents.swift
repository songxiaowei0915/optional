import Foundation

extension Sequence {
    func myFlatMap<T>(_ transform: (Iterator.Element) -> T?) -> [T] {
        return self.map(transform)
            .filter{ $0 != nil}
            .map { $0!}
    }
}

let episodees = [
    "The fail of sentianl values": 100,
    "Common optional operation": 150,
    "Nested optionals": 180,
    "Map and flatMap": 220
]

print(episodees.keys.filter {episodees[$0]! > 100}.sorted())

print(episodees.filter { (_, duration) in duration > 100}.map {(title, _) in return title}.sorted())
