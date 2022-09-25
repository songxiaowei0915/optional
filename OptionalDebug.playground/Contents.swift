import Foundation

var record = ["name": "11"]

infix operator !!
func !!<T>(optional: T?, errorMsg: @autoclosure () -> String) -> T {
    if let value = optional { return value }
    
    fatalError(errorMsg())
}


typealias NilDefault<T> = (errorMsg: String, value: T)
infix operator !?
func !?<T: ExpressibleByStringLiteral>(optional: T?, nilDefault: @autoclosure ()-> NilDefault<T>) -> T {
   // assert(optional != nil, nilDefault().errorMsg)
    
    return optional ??  nilDefault().value
}

record["type"] !? ("Do not have a key named type", "Free")
print(record)

func !?(optional: Void? , errorMsg: @autoclosure () -> String) {
    assert(optional != nil, errorMsg())
}

//record["type"]?.write(" account") !? "Do not have a key named type"
