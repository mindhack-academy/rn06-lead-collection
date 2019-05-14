//
//  FormVC.swift
//  LeadCollection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation
import UIKit

class FormVC: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailNameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var tehnologySegmentedControl: UISegmentedControl!
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var dateDataPicker: UIDatePicker!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

}
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        
     print(firstNameTextField.text,
           
           lastNameTextField.text,
           
           emailNameTextField.text,
           
           phoneTextField.text,
    
        tehnologySegmentedControl.selectedSegmentIndex,
        tehnologySegmentedControl.titleForSegment(at: tehnologySegmentedControl.selectedSegmentIndex),
        reasonTextView.text,
           
           dateDataPicker.date)
    }
    
    
    
    
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        
        
    }
    
    
}
