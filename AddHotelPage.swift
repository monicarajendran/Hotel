//
//  ViewControllerFour.swift
//  Hotel
//
//  Created by user on 15/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class AddHotelPage: UIViewController {
    
    @IBOutlet weak var notificationLabel: UILabel!
    @IBOutlet weak var welcomeMessage: UILabel!
    var myString = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeMessage.text = myString
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addButton(_ sender: Any) {
    
    
//        guard let vControllerFour = storyboard?.instantiateViewController(withIdentifier: "MainPage") as? MainPage else {return}
//        
//        navigationController?.popToViewController(vControllerFour, animated: true)
//        
    }
   
    override func viewDidAppear(_ animated: Bool) {
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateNotification), name: NSNotification.Name(rawValue: notificationKey), object: nil)
        
    }

    func updateNotification(notify: NSNotification) -> Any{
        print(notify.userInfo as Any)
        notificationLabel.text = notificationKey
        return notificationLabel

    }
//    override func viewDidDisappear(_ animated: Bool) {
//        NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: notificationKey), object: HotelDetailPage())
//    }
   /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
