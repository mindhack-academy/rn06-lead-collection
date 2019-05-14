//
//  ViewController.swift
//  LeadCollection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var ErrorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ErrorLabel.isHidden = true
        ErrorLabel.text = "Email sau parola invalide"
        
    }

    @IBAction func DoLogin(_ sender: Any) {
        
        
//        print(EmailTextField.text, PasswordTextField.text)
        
          print("Al doilea commit")

        
        
        
        if EmailTextField.text == "Email@me.com",PasswordTextField.text == "pass"{
        // autentificare validata
            ErrorLabel.isHidden = true

            if let formVC = self.storyboard?.instantiateViewController(withIdentifier: "FormVC") {
                self.present(formVC, animated: true, completion: nil)

                
            }
            
            
        } else {
            // autentificare invalida
            
            ErrorLabel.isHidden = false
            
            
            }
        
        
    }
    

}

