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

    func updateFlashcard(question: String, answer: String ) {
        //Do stuff here
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //We know the destination of the segue is the navigation Controller
        let navigationController = segue.destination as! CreationViewController
        
        //We know the Navigation Controller only contains a Creation View Controller
        let creationController = navigationController.topViewController as! CreationViewController
        
        //We set the flashcardsController property to self
        creationController.flashcardsController = self
    }
}
