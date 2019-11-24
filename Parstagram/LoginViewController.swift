//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Gustavo Cordido on 11/15/19.
//  Copyright © 2019 gustavocordido. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var username_field: UITextField!
    
    @IBOutlet weak var password_field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func on_SignIn(_ sender: Any) {
        

        let username = username_field.text!
        let password = password_field.text!
        
        PFUser.logInWithUsername(inBackground: username, password: password){ (user, error) in
            if user != nil {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    @IBAction func on_SignUp(_ sender: Any) {
        
        let user = PFUser()
        user.username = username_field.text
        user.password = password_field.text
        
        user.signUpInBackground { (success, error) in
            if success {
                self.performSegue(withIdentifier: "loginSegue", sender: nil)
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
}
