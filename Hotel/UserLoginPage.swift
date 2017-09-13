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
    
    
    @IBAction func loginUserButton(_ sender: Any) {
        
        if userName.text != "" && password.text != nil{
            
            let userlogin = userName.text , passWordlogin = password.text
          //  let passwordReset = UserDefaults.standard.object(forKey: "resetpassword")
            
            guard let signUpUser =  UserDefaults.standard.dictionary(forKey: "user") , let usernameRegistered = signUpUser["userName"] , let passwordRegistered = signUpUser["password"] else {
                return
            }
            
            if userlogin == usernameRegistered as? String && (passWordlogin == passwordRegistered as? String) /* ||  (passWordlogin == passwordReset as? String) */  {
            

            
                //                let controllerId = "tableview"
            //    let appdelegate = UIApplication.shared.delegate as? AppDelegate
//                        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//                        let initViewController : UIViewController = storyboard.instantiateViewController(withIdentifier: controllerId) as UIViewController
//                        self.window?.rootViewController = initViewController
//                        
//
            
        
                guard let vControllerFour = storyboard?.instantiateViewController(withIdentifier: "tabbar") else {return}
                
                navigationController?.pushViewController(vControllerFour, animated: true)
            }
            
            
            else{
                    let alert = UIAlertController(title: "Alert", message: "YOU ARE NOT AN USER!  PLEASE SIGNUP!", preferredStyle: UIAlertControllerStyle.alert)
                    let okayAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default , handler: nil)
                alert.addAction(okayAction)
                self.present(alert, animated: true, completion: nil)
                

                    
                }
                
        
        }
        
                
                
            }
        
        }
        
        
    



