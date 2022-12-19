//
//  ViewController.swift
//  Navigation App
//
//  Created by Никита on 19.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Ссылка на сториборд где размещен данный ViewController
    let storyboardInstance = UIStoryboard(name: "Main", bundle: nil)

    @IBAction func toGreenScene(_ sender: UIButton) {
        let toTheNextScene = storyboardInstance.instantiateViewController(withIdentifier: "greenViewController")
        self.navigationController?.pushViewController(toTheNextScene, animated: true)
    }
    
    @IBAction func toYellowScene(_ sender: UIButton) {
        let toTheNextScene = storyboardInstance.instantiateViewController(withIdentifier: "yellowViewController")
        self.navigationController?.pushViewController(toTheNextScene, animated: true)
    }
    
    @IBAction func toRootScene(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)    }
    
    @IBAction func toPreviousScene(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}

