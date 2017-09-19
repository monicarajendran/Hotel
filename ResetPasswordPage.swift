//
//  ResetPasswordPage.swift
//  Hotel
//
//  Created by user on 20/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class ResetPasswordPage: UIViewController {
    
    @IBOutlet weak var oldPassword: UITextField!
    
    @IBOutlet weak var newPassword: UITextField!
    
    @IBOutlet weak var confirmPassword: UITextField!
    
    func alertMessage(_ alertDisplay: String){
        
        let alert = UIAlertController(title: "Alert", message: alertDisplay, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        
        
        if newPassword.text == confirmPassword.text {
            
            alertMessage("PASSWORD IS RESET")
            

            var userDetails = UserDefaults.standard.dictionary(forKey: "user") as? [String:[String:String]]
            
            var userEmail = UserDefaults.standard.string(forKey: "loggedInUserEmail")
            
            userDetails?[userEmail!]?["password"] = confirmPassword.text
            
            UserDefaults.standard.set(userDetails, forKey: "user")
            
            UserDefaults.standard.synchronize()
                      
            
        }
            else{
                alertMessage("PASSWORD MISMATCHED")
            }

            
            
        
        
    }
    

}
