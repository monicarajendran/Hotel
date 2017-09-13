//
//  finalPage.swift
//  Hotel
//
//  Created by user on 15/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit
let notificationKey = "SUCCESSFULL!"
class HotelDetailPage: UIViewController {


    @IBOutlet weak var hotelName: UITextField!
    
    @IBOutlet weak var ratingOfTheHotel: UITextField!
    
    @IBOutlet weak var discountPercent: UITextField!
    
    @IBOutlet weak var location: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var contactNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        
    }
    func updateNotification() -> Any{
        return notificationKey
    }
    
    

      // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func addHotelDetails(_ sender: Any) {
        
        
        let defaults = UserDefaults.standard
        var userDictionary = [String:Any]()
        userDictionary["hotelName"] = hotelName.text
        userDictionary["starRating"] = ratingOfTheHotel.text
        userDictionary["discountPercent"] = discountPercent.text
        userDictionary["locations"] = location.text
        userDictionary["address"] = address.text
        userDictionary["contactNumber"] = contactNumber.text
        //print(userDictionary)
        
        defaults.set(userDictionary, forKey: "hotel1")
        
// print(defaults.object(forKey: "hotel1") as Any)
        
//        var arr = [Any]()
//        arr.append(userDictionary)
//        print(arr)
//        
        
            defaults.synchronize()
        
      //  NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil)
       NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: userDictionary)

        
        dismiss(animated: true, completion: nil)
        
        
       
           }
    

    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for s
     egue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
