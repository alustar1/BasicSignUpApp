//
//  ViewController.swift
//  AlertProject
//
//  Created by Muhammet Kuzu on 12.02.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    func Alert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        
        
        let username = usernameText.text ?? ""
        let password = passwordText.text ?? ""
        let password2 = password2Text.text ?? ""
        
        if username.isEmpty{
            Alert(title: "Error", message: "Username not found!")
        }else if password.isEmpty{
            Alert(title: "Error", message: "Password do not match or empty!")
            
        }else if password != password2{
            Alert(title: "Error", message: "Password do not match!")
            
        }else{
            Alert(title: "Success", message: "Sign Up successfully!")
        }
        
      
            
        }
        
    }
  
    
    
    
    
    
    
func viewDidLoad() {
        viewDidLoad()
        // Do any additional setup after loading the view.
    }




