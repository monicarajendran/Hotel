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

            
            
//            UserDefaults.standard.dictionary(forKey: "")
//            registeredUser[]?["password"]
//            let serachForUser = UserDefaults.standard.string(forKey: "loggedInUser")
// guard let registeredUser =  UserDefaults.standard.array(forKey: "user")  as? [[String:String]] else{return}
//            var registeredUser =  UserDefaults.standard.array(forKey: "user")  as! [[String:String]]
//            for updatePassword in registeredUser {
//                
//                if updatePassword["userName"] == serachForUser {
//                    var resetPasswordUpdate = updatePassword
//                    resetPasswordUpdate["password"] = confirmPassword.text
//                    print(resetPasswordUpdate)
//                    break
//                    
                    //updatePassword["password"] = newPassword2.text
                    
            
                
        
            
            

            
//            let defaultUser = UserDefaults.standard
//            if  var resetPassword = UserDefaults.standard.dictionary(forKey: "userUpdate") {
//
//            print(resetPassword)
//            
//            let passwordChanged = newPassword2.text
//                
//            resetPassword.updateValue(passwordChanged!, forKey: "password")
//               defaultUser.set(resetPassword, forKey: "userUpdate")
//                
//            print(resetPassword)
//            defaultUser.synchronize()
//        }
        
        
        
    }
    

}
