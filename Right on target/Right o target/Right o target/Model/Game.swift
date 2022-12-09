

protocol GameProtocol {
    var score: Int {get}
    var currentRound: GameRoundProtocol! {get}
    
    var isGameEnded:Bool {get}
    var secretValueGenerator: GenerationProtocol {get}
    func restartGame()
    func startNewRound()
}

class Game: GameProtocol {
    var score: Int {
            var totalScore: Int = 0
            for round in self.rounds {
                totalScore += round.score
            }
            return totalScore
        }
    var currentRound: GameRoundProtocol!
        private var rounds: [GameRoundProtocol] = []
        var secretValueGenerator: GenerationProtocol
        private var roundsCount: Int!
        var isGameEnded: Bool {
            if roundsCount == rounds.count {
                return true
            } else {
                return false
            }
        }
    
    init?(valueGenerator: GenerationProtocol, rounds: Int) {
        secretValueGenerator = valueGenerator
                roundsCount = rounds
                startNewRound()
            }
    
    func restartGame() {
        rounds = []
        startNewRound()
    }
    
    func startNewRound() {
        let newSecretValue = self.getNewSecretValue()
        currentRound = round(secretValue: newSecretValue)
        rounds.append(currentRound)
    }
    
    private func getNewSecretValue() -> Int{
        return secretValueGenerator.randomNum()
    }

}
