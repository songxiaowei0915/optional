import UIKit
import SwiftUI

let number: Int? = 1

if let number = number , number % 2 != 0 {
    print(number)
    print(number)
    print(number)
    print(number)
}

let imageUrl = "https://pic1.zhimg.com/v2-3fc70e442137fd4d0856f1a2aa9fd300_1440w.jpg?source=172ae18b"
if let url = URL(string: imageUrl), url.pathExtension == "jpg", let data = try? Data(contentsOf: url), let uiImage = UIImage(data: data) {
    Image(uiImage: uiImage)
}

let numbers = [1, 2, 3, 4, 5, 6]
var iterator = numbers.makeIterator()
while let element = iterator.next() {
    print(element)
}

for element in numbers {
    print("forIn \(element)")
}

var fnArray: [() -> ()] = []
for i in 0...3 {
    fnArray.append ({print(i)})
}

fnArray[0]()
fnArray[1]()
fnArray[2]()
fnArray[3]()
