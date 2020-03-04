//
//  ViewController.swift
//  Login Lab
//
//  Created by Liana on 3/2/20.
//  Copyright © 2020 Liana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender =  sender as? UIButton else {return}
        
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
 
        
    }
    @IBAction func tappedForgotUserName(_ sender: UIButton) {
                performSegue(withIdentifier: "ForgottenUsernameorPassword", sender: tappedForgotUserName)
            }
            @IBAction func tappedForgotPasswordButton(_ sender: UIButton) {
                performSegue(withIdentifier: "ForgottenUsernameorPassword", sender: tappedForgotPasswordButton)
       }
    
    
}

