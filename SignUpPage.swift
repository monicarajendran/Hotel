//
//  SignUpPage.swift
//  Hotel
//
//  Created by user on 17/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class SignUpPage: UIViewController {
    let defaults = UserDefaults.standard

    
    @IBOutlet weak var userName: UITextField!
    

    @IBOutlet weak var emailId: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func registerButton(_ sender: Any) {
        
        func alertMessage(_ alertDisplay: String){
            let alert = UIAlertController(title: "Alert", message: alertDisplay, preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
            
        }

        
        guard let user = userName.text , let passWord = password.text , let email = emailId.text , let providedEmailAddress = emailId.text
 else{return}
        if user.isEmpty || passWord.isEmpty || email.isEmpty {
            alertMessage("All fields are required")
            
        }else{
            

            func isValidEmailAddress(emailAddressString:String) -> Bool {
                let emailRegistered = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
                
                let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegistered)
                return emailTest.evaluate(with: emailAddressString)
            }
        
        
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: providedEmailAddress)

        if isEmailAddressValid
        {
            var userDetails = [String:String]()

           
            userDetails["userName"] = user
            userDetails["emailId"] = email
            userDetails["password"] = passWord

            defaults.set(userDetails, forKey: "user")
            
            defaults.synchronize()
            
            
            let alert = UIAlertController(title: "Alert", message: "REGISTRATION IS SUCCESSFULL", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainPage") as? MainPage else{return}
                self.navigationController!.popViewController(animated: true)}))
            self.present(alert, animated: true, completion: nil)
            

            

            
            
        } else{
            alertMessage("INVALID EMAIL ID")
            }
        
        
        
    }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
