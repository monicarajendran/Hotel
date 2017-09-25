//
//  UserLoginPage.swift
//  Hotel
//
//  Created by user on 18/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class UserLoginPage: UIViewController {
    
    
    @IBOutlet weak var userEmailid: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        
        userEmailid.text = ""
        password.text = ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alertMessage(_ alertDisplay: String){
        
        let alert = UIAlertController(title: "Alert", message: alertDisplay, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func loginUserButton(_ sender: Any) {
        
        if userEmailid.text != "" && password.text != "" {
            
            let defaultUser = UserDefaults.standard

            
            guard let userlogin = userEmailid.text , let passWordlogin = password.text , let registeredUsers =  defaultUser.dictionary(forKey: "user")  as? [String:[String:String]] else{return}
            
            
            if registeredUsers[userlogin] != nil {
                
                if (registeredUsers[userlogin]?["password"]) == passWordlogin {
                    
                    guard let homeTabBar = storyboard?.instantiateViewController(withIdentifier: "tabbar") else {return}
                    
                    navigationController?.pushViewController(homeTabBar, animated: true)
                    
                   let userName = registeredUsers[userlogin]?["userName"]
                    defaultUser.set(userlogin, forKey: "loggedInUserEmail")
                    defaultUser.set(userName, forKey: "loggedInUserName")
                    defaultUser.synchronize()
                    
                    
                }
                else{
                    
                    alertMessage("INCORRECT PASSWORD!")
                }
                
            }
            else{
                
                alertMessage("YOU ARE NOT A USER! PLEASE LOGIN")
            }
        }
        else{
            
            alertMessage("ALL FIELDS ARE REQUIRED")
        }
    }
}
















