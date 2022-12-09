//
//  ViewController.swift
//  Right o target
//
//  Created by Никита on 02.12.2022.
//

import UIKit

class ViewController: UIViewController {

    var game: Game!
    var generator: Generate!
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generator = Generate(minValue: 1, maxValue: 50)
        game = Game(valueGenerator: generator, rounds: 5)
        updateLabelWithSecretNumber(newText: String(generator.randomNum()))
    }
    
    @IBAction func checkNumber() {
        game.currentRound.calculateScore(with: Int(slider.value))
        if game.isGameEnded {
            showAlertWith(score: game.score)
            game.restartGame()
        } else {
            game.startNewRound()
        }
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    func updateLabelWithSecretNumber(newText: String) {
        label.text = newText
    }
    
    private func showAlertWith(score: Int) {
        let alert = UIAlertController(title: "Игра окончена", message: "Вы заработали \(score) очков", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
