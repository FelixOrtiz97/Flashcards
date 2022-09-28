//
//  ViewController.swift
//  Flashcards
//
//  Created by Felix Ortiz on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapFlashCard(_ sender: Any) {
        if frontLabel.tag == 0
        {
            frontLabel.tag = 1
            frontLabel.isHidden = true
        }
        else if frontLabel.tag == 1
        {
            frontLabel.tag = 0
            frontLabel.isHidden = false
        }
        
    }
    func updateFlashcard(question: String, answer: String) {
        dismiss(animated: true)
    }
}
