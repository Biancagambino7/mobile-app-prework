//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by Bianca Gambino on 8/18/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var schoolName: UITextField!
    
    @IBOutlet weak var yearSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPets: UILabel!
    
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {

        numberOfPets.text = "\(Int(sender.value))"
        }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        
        // Get the selected year
        let year = yearSegmentControl.titleForSegment(at: yearSegmentControl.selectedSegmentIndex) ?? "unknown"
        
        // Convert boolean to a friendly phrase
        let wantsMorePets = morePetsSwitch.isOn ? "do" : "do not"
        
        // Construct the introduction string
        let introduction = """
        My name is \(firstName.text ?? "") \(lastName.text ?? "") and I attend \(schoolName.text ?? "").
        I am currently in my \(year) year and I own \(numberOfPets.text ?? "0") pet(s).
        I \(wantsMorePets) want more pets.
        """
        
        print(introduction)
        
        // Create and show the alert
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
    
    }


}

