import UIKit
import Foundation

enum Optional<T> {
    case some(T)
    case none
}

extension Array where Element: Equatable {
    func find(_ element: Element) -> Optional<Index> {
        var index = startIndex
        
        while index != endIndex {
            if self[index] == element {
                return .some(index)
            }
            
            formIndex(after: &index)
        }
        
        return .none
    }
}

var numbers = [1, 2, 3]
let index = numbers.find(4)
type(of: index)

switch index {
case .some(let index):
    numbers.remove(at: index)
case .none:
    print("Not exits")
}

let index2 = numbers.firstIndex(of: 4)
switch index2 {
case let index2?:
    numbers.remove(at: index2)
case nil:
    print("Not exits")
}
