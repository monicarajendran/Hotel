//
//  SignUpPage.swift
//  Hotel
//
//  Created by user on 17/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit


class SignUpPage: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    
    
    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    
    func alertMessage(_ alertDisplay: String){
        let alert = UIAlertController(title: "Alert", message: alertDisplay, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    func isValidEmailAddress(emailAddressString:String) -> Bool {
        
        let emailRegistered = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegistered)
        
        return emailTest.evaluate(with: emailAddressString)
    }
    
    @IBAction func registerButton(_ sender: Any) {
    
        guard let user = userName.text , let passWord = password.text , let providedEmailAddress = emailId.text
            else{return}
        
        if user.isEmpty || passWord.isEmpty || providedEmailAddress.isEmpty {
            
            alertMessage("All fields are required")
            
        }
        
        else{
            
            if isValidEmailAddress(emailAddressString: providedEmailAddress)
            {
                let userDetails = [providedEmailAddress: ["userName": user,"password": passWord]]
                
                let registeredUser = UserDefaults.standard
                
                if let storedUsers = registeredUser.dictionary(forKey: "user") as? [String:[String:String]] {
                    
                    let multipleUserData = NSMutableDictionary(dictionary: storedUsers)
                    
                    multipleUserData[providedEmailAddress] = ["userName": user,"password":passWord]
                    
                    registeredUser.set(multipleUserData, forKey: "user")
                    
                } else {
                    
                    registeredUser.set(userDetails, forKey: "user")
                    
                }
                registeredUser.synchronize()
                
                
                print(UserDefaults.standard.dictionary(forKey: "user") as Any)
                
                let alert = UIAlertController(title: "Alert", message: "REGISTRATION IS SUCCESSFULL", preferredStyle: UIAlertControllerStyle.alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in guard let _ = self.storyboard?.instantiateViewController(withIdentifier: "MainPage") as? MainPage else{return}
                    self.navigationController?.popViewController(animated: true)}))
                
                self.present(alert, animated: true, completion: nil)

            }
            else{
                
                alertMessage("INVALID EMAIL ID")
            }
        }
    }
}
