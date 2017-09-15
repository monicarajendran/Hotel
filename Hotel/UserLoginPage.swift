//
//  UserLoginPage.swift
//  Hotel
//
//  Created by user on 18/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class UserLoginPage: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        userName.text = ""
        password.text = ""
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        self.navigationController?.navigationBar.topItem?.title = "USER LOGIN"
        self.navigationItem.setHidesBackButton(true, animated: true)
        
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
        
        if userName.text != "" && password.text != ""{
            
            let userlogin = userName.text , passWordlogin = password.text
            
            guard let registeredUser =  UserDefaults.standard.array(forKey: "user")  as? [[String:String]] else{return}
            
            var temp = registeredUser.count
            
                for dictionaryOfEachUser in registeredUser{
                    
                    if (temp != 0) {
                        
                        
                        

                    if dictionaryOfEachUser["userName"] == userlogin {
                        if dictionaryOfEachUser["password"] == passWordlogin{
                            
                            guard let vControllerFour = storyboard?.instantiateViewController(withIdentifier: "tabbar") else {return}
                            
                            navigationController?.pushViewController(vControllerFour, animated: true)
                            
                            break
                            
                        }else{
                            alertMessage("INCORRECT PASSWORD!")                        }
                        
                    }
                }
                    temp = temp - 1

                    
                    if temp == 0 {
                        alertMessage("YOU ARE NOT AN USER ! PLEASE LOGIN")
                    }

                
                
            }
            
                
                
            
        }
    }
    
    
}












