
class Dragon: Enemy {
    var wingSpan = 2
    
    func talk(_ speech: String) {
        print("Says: \(speech)")
    }
    
    override func move() {
        print("Fly forward!")
    }
}
