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
        
        //        print(firstNameTextField.text,
        //
        //              lastNameTextField.text,
        //
        //              emailNameTextField.text,
        //
        //              phoneTextField.text,
        //
        //              tehnologySegmentedControl.selectedSegmentIndex,
        //              tehnologySegmentedControl.titleForSegment(at: tehnologySegmentedControl.selectedSegmentIndex),
        //              reasonTextView.text,
        //
        //              dateDataPicker.date)
        //
        var user: User = User()
        
        user.firstName = firstNameTextField.text
        user.lastName = lastNameTextField.text
        user.email = emailNameTextField.text
        user.phone = phoneTextField.text
        
        
        print("----- USER -----")
        print(user)
        
        var formData: FormData = FormData()
        formData.user = user
        formData.technology = tehnologySegmentedControl.selectedSegmentIndex
        formData.reason = reasonTextView.text
        formData.contactDate = dateDataPicker.date
        
        
        print("----- FORM DATA -----")
        print(formData)
        
        // add to StorageManager
        StorageManager.shared.addData(formData: formData)
        
        //print StoreageManager data
        print(StorageManager.shared.getData())
        
        // reset form
        resetForm()
        
        
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        resetForm()
        
    }
    
    func resetForm()  {
        
        self.firstNameTextField.text = ""
        self.lastNameTextField.text = ""
        self.dateDataPicker.date = Date()
        self.emailNameTextField.text = ""
        self.phoneTextField.text = ""
        self.reasonTextView.text = ""
        self.tehnologySegmentedControl.selectedSegmentIndex = 0
        
        self.firstNameTextField.becomeFirstResponder()
        
    }
    
}



