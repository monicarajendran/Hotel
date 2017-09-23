//
//  NavigationController.swift
//  Hotel
//
//  Created by user on 21/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userNameUnwrapped = UserDefaults.standard.string(forKey: "loggedInUserName") , !userNameUnwrapped.isEmpty else {return}
        
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = mainStoryboard.instantiateViewController(withIdentifier:"tabbar") as! TabBarController
        let nav = UINavigationController(rootViewController: secondViewController)
        appdelegate.window!.rootViewController = nav
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
