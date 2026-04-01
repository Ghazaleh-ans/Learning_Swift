struct TipBrain {
    var selectedTip: String = ""
    
    var people: Int = 2
    
    var billAmount: Float = 123.56
    
    func getTipValue() -> Double {
        switch selectedTip {
        case "0":
            return 0.0
        case "20":
            return 0.20
        default:
            return 0.10
        }
    }
    
    func calculateTip() -> Float {
        let tipValue = getTipValue()
        return (billAmount * Float(tipValue))
    }
    
    func calculateEachPersonShare() -> Float {
        let tipAmount = calculateTip()
        return (billAmount + tipAmount) / Float(people)
    }
    
}
