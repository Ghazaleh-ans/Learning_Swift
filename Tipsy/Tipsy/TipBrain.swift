struct TipBrain {
    var selectedTip: String = ""
    
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
}
