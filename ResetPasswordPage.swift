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
    
    @IBOutlet weak var newPassword1: UITextField!
    
    @IBOutlet weak var newPassword2: UITextField!
    
    func alertMessage(_ alertDisplay: String){
        
        let alert = UIAlertController(title: "Alert", message: alertDisplay, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        if newPassword1.text == newPassword2.text {
            alertMessage("PASSWORD IS RESET")
            let defaultUser = UserDefaults.standard
            if  var resetPassword = UserDefaults.standard.dictionary(forKey: "user") {

            print(resetPassword)
            
            let passwordChanged = newPassword2.text
                
            resetPassword.updateValue(passwordChanged!, forKey: "password")
               defaultUser.set(resetPassword, forKey: "user")
                
            print(resetPassword)
            defaultUser.synchronize()
        }
        }
        else{
            alertMessage("PASSWORD MISMATCHED")
        }

    }
    

}
