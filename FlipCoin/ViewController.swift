//
//  ViewController.swift
//  FlipCoin
//
//  Created by Daddy on 08/10/2024.
//

import UIKit

class ViewController: UIViewController {
    let chooses = ["HEAD!", "TAILS!"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func flipBtnTapped(_ sender: Any) {
        let choose = chooses.randomElement()
        showAlert(message: choose!)
    }
    func showAlert(message: String) {
        let alert = UIAlertController(title: "", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}

