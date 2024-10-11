//
//  ViewController.swift
//  FlipCoin
//
//  Created by Daddy on 08/10/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var flipBtn: UIButton!
    let chooses = ["HEAD!", "TAILS!"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func flipBtnTapped(_ sender: Any) {
        let choose = chooses.randomElement()

        if choose == "HEAD!" {
            if let image = UIImage(named: "Heads") {
                flipBtn.setImage(image, for: .normal)
            }
        } else if choose == "TAILS!" {  // Corrected this block
            if let image = UIImage(named: "Tails") {
                flipBtn.setImage(image, for: .normal)
            }
        }
    }

}
