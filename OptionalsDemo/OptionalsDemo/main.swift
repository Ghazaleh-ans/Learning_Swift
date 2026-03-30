
let myOptional: String?

myOptional = nil

//1.Force Unwarping the optional -> least safe way
// if myOptioanal be nil we will have runtime error
//let text: String = myOptional!

//2.Check for nil value
//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("myOptional was found to be nil.")
//}

//3.Optional Binding :instead of checking if it's not nil
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//    print(safeOptional)
//} else {
//    print("myOptional was found to be nil.")
//}

//4.Nil Coalescing Operator
//two question marks next to each other that checks if the optional is nil use
//the default value if it's not use the value
//optional ?? defaultValue
let text: String = myOptional ?? "No Value"
print(text)
