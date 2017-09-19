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
        guard let name = hotelName.text , name != "" else { return }
        
        let arrayOfhotels = [name]
        
        let defaults = UserDefaults.standard
        
        if var arrayOfhotels = defaults.array(forKey: "hotels") as? [String]  {
            
            arrayOfhotels.append(name)
            defaults.set(arrayOfhotels, forKey: "hotels")

            
        }
        else {
            defaults.set(arrayOfhotels, forKey: "hotels")
        }
        
        defaults.synchronize()

        
        print(arrayOfhotels)
        
        
        
        
        
        
        
//        let name = hotelName.text
//        let hotelAddedRecord = UserDefaults.standard
//
//        let initialRecordOfHotels = [hotelName.text!,discountPercent.text!,location.text!,address.text!,contactNumber.text!]
//        if let initialRecordOfHotels = (hotelAddedRecord.dictionary(forKey: "hotel") as? [String:[String]]) {
//        
//        let hotelNameAsKey  = NSMutableDictionary(dictionary: initialRecordOfHotels)
//        
//        hotelNameAsKey[name!] = [hotelName.text!,discountPercent.text!,location.text!,address.text!,contactNumber.text!]
//        
//        
//        hotelAddedRecord.set(hotelNameAsKey, forKey: "hotel")
//        
//        hotelAddedRecord.set(name, forKey: "hotelName")
//        
//        hotelAddedRecord.synchronize()
//        
//        print(hotelNameAsKey)
//            
//        }else {
//            
//            hotelAddedRecord.set(initialRecordOfHotels, forKey: "hotel")
//            hotelAddedRecord.synchronize()
//            
//        }
        
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    
}

