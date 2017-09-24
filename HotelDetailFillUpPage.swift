//
//  finalPage.swift
//  Hotel
//
//  Created by user on 15/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit
class HotelDetailFillUpPage: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var hotelName: UITextField!
    
    @IBOutlet weak var discountPercent: UITextField!
    
    @IBOutlet weak var ratingOfTheHotel: UIButton!
    
    @IBOutlet weak var location: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var contactNumber: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        contactNumber.delegate = self
        discountPercent.delegate = self
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.decimalDigits
        
        let characterSet = CharacterSet(charactersIn: string)
        
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @IBAction func addHotelToTheList(_ sender: Any) {
        
        let newHotel = Hotel(hotelName: hotelName.text!, discountPercent: discountPercent.text!,locationOfTheHotel: location.text!, addressOfTheHotel: address.text!, contactNumber: contactNumber.text!)
        
        let defaults = UserDefaults.standard
        
        if let encodeData = defaults.data(forKey: "HOTEL") as? NSData {
            
            var decode = NSKeyedUnarchiver.unarchiveObject(with: encodeData as Data) as? [Hotel]
            
            decode?.append(newHotel)
            
            defaults.set(decode, forKey: "HOTEL")
            
            defaults.synchronize()
            
        }
            
        else{
            var array : [Hotel] = [newHotel]
            
            let encodedData = NSKeyedArchiver.archivedData(withRootObject: array)
            
            defaults.set(encodedData, forKey: "HOTEL")
            
            defaults.synchronize()
            
        }
        
            }
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}

