//
//  ViewControllerTwo.swift
//  Hotel
//
//  Created by user on 14/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit
class AdminPage: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        userName.text = ""
        password.text = ""
        self.title = "Admin Page"
        
        
    }
    @IBAction func loginButton(_ sender: Any) {
        let admin = "moni"
        if userName.text == admin && password.text == "moni"{
            guard let homeTab = self.storyboard?.instantiateViewController(withIdentifier: "tabbar") as? TabBarController else {return}
            homeTab.loginUser = admin
            self.navigationController?.pushViewController(homeTab, animated: false)
            
            
            
        }
        else{
            
            guard let vControllerThree = storyboard?.instantiateViewController(withIdentifier: "ViewControllerThree")  else {return}
            
            navigationController?.pushViewController(vControllerThree, animated: true)
            
        }
    }
}
