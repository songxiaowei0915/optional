import Foundation

var eleven: Int! = 11
print(type(of: eleven))
if eleven == 11 {
    print(type(of: eleven))
}

func double(_ i: inout Int) {
    i *= 2
}

double(&eleven)
print(eleven!)
