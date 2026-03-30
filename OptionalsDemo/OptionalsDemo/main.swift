
let myOptional: String?

myOptional = "Angela"

//1.Force Unwarping the optional -> least safe way
// if myOptioanal be nil we will have runtime error
//let text: String = myOptional!

//2.Check for nil value
if myOptional != nil {
    let text: String = myOptional!
} else {
    print("myOptional was found to be nil.")
}
