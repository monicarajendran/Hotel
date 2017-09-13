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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        userName.text = ""
        password.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let passworD = password.text
        
        if userName.text == "moni" && !(passworD?.isEmpty)!{
            guard let vControllerThree = self.storyboard?.instantiateViewController(withIdentifier: "tableview") else {return}
            //vControllerThree.myString = ("WELCOME \(userName.text!)")
            self.navigationController?.pushViewController(vControllerThree, animated:  true)
            
            
        }
        else{
            
            guard let vControllerThree = storyboard?.instantiateViewController(withIdentifier: "ViewControllerThree")  else {return}
            
            navigationController?.pushViewController(vControllerThree, animated: true)
            

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
