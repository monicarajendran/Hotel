//
//  ViewController.swift
//  Hotel
//
//  Created by user on 14/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class MainPage: UIViewController {
    
    override func viewDidLoad() {
        
        self.navigationItem.title = "Login page"
        
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func adminButton(_ sender: Any) {
        
        guard let vControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "adminLogin")
            as? AdminPage else {return}
        
        self.navigationController?.pushViewController(vControllerTwo, animated: false)
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        guard let ControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "SignUp")
            as? SignUpPage else {return}
        
        self.navigationController?.pushViewController(ControllerTwo, animated: true)
        
    }
    
    @IBAction func userButton(_ sender: Any) {
        
        guard let ControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "UserLogin")
            as? UserLoginPage else {return}
        
        self.navigationController?.pushViewController(ControllerTwo, animated: false)
        
    }
    
}

