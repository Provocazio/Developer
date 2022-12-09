

protocol GenerationProtocol {
    func randomNum() -> Int
    
}

class Generate: GenerationProtocol {
    
    private var minSecretValue: Int
    private var maxSecretValue: Int
    
    init?(minValue: Int, maxValue: Int) {
        guard minValue <= maxValue else {
        return nil
        }
        minSecretValue = minValue
        maxSecretValue = maxValue
    }
    
    func randomNum() -> Int {
        (minSecretValue...maxSecretValue).randomElement()!
        }
}

