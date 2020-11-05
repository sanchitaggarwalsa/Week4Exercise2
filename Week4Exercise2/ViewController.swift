//
//  ViewController.swift
//  Week4Exercise2
//
//  Created by Sanchit Aggarwal on 2020-11-03.
//

import UIKit


class ViewController: UIViewController {

    private let serverModel = Server()
    
    
    
    
    
    
    
    
    // outlets and variables
    @IBOutlet weak var signinLabel: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signinButtonRounded: UIButton!
    
    @IBOutlet weak var responseLabel: UILabel!
    
    @IBOutlet weak var signupButtonRounded: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //change the font style and size for the SignIn Label
        signinLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 25.0)
        
        // round button corners
        signupButtonRounded.layer.cornerRadius = 20
        signinButtonRounded.layer.cornerRadius = 20
        
        print("Welcome to my first App")
    }

    //Actions and Methods
   
    @IBAction func loginButtonPressed(_ sender: Any) {
      //  print("Welcome to my First App")
        responseLabel.text = "You pressed me!"
    }
    
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
    }
}
    

