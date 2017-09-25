//
//  TabBarController.swift
//  Hotel
//
//  Created by user on 21/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    var loginUser = String()
    
    func addHotelButton(sender: UIBarButtonItem){
        
        guard let addHotel = self.storyboard?.instantiateViewController(withIdentifier: "HotelDetailFillUpPage") else {return}
        
        
        self.navigationController?.present(addHotel, animated: true, completion: nil)
        
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBarController?.selectedIndex = 2
        
            self.navigationItem.setHidesBackButton(true, animated: true)
        if loginUser == "moni"  {
            
            
            navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addHotelButton(sender:)))
            
        }
        else{

        }


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
