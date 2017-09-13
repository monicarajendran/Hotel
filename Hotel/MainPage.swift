//
//  ViewController.swift
//  Hotel
//
//  Created by user on 14/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class MainPage: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(false, animated: true)
//    }

        @IBAction func adminButton(_ sender: Any) {
    
        guard let vControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerTwo")
            as? AdminPage else {return}
        
        self.navigationController?.pushViewController(vControllerTwo, animated: true)
    }
    
    
    @IBAction func signUpButton(_ sender: Any) {
        guard let ControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "SignUp")
            as? SignUpPage else {return}
        
        self.navigationController?.pushViewController(ControllerTwo, animated: true)
        

    }
    
    @IBAction func userButton(_ sender: Any) {
        guard let ControllerTwo = self.storyboard?.instantiateViewController(withIdentifier: "UserLogin")
            as? UserLoginPage else {return}
        
        self.navigationController?.pushViewController(ControllerTwo, animated: true)
        

        
    }
    
    
    

}

