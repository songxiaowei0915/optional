import Foundation

func arrayProcess(array: [Int]) -> String? {
//    guard let first = array.first else {
//        return
//    }
//
//    print(first)
    let firstNumber: Int
    
    if let first = array.first {
        firstNumber = first
    }
    else {
        return nil
    }
    
    return String(firstNumber)
}

func doDo(item: String?) -> Never {
    guard let item = item else {
        fatalError()
    }
    
    fatalError("Implement \(item) later")
}
