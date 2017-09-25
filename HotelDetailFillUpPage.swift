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
    
    @IBOutlet weak var pickerViewtextField: UITextField!
    
    @IBOutlet weak var location: UITextField!
    
    @IBOutlet weak var address: UITextField!
    
    @IBOutlet weak var contactNumber: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        contactNumber.delegate = self
        discountPercent.delegate = self
        
        navigationItem.title = "Hotel Details"
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.decimalDigits
        
        let characterSet = CharacterSet(charactersIn: string)
        
        return allowedCharacters.isSuperset(of: characterSet)
    }
    
    @IBAction func addHotelToTheList(_ sender: Any) {
        
        guard let hotelName = hotelName.text , let hotelDiscountPercent = discountPercent.text, let hotelLocation = location.text, let hotelAddress = address.text,let hotelContactNumber = contactNumber.text else {return}
        
        let newHotel = Hotel(hotelName: hotelName, discountPercent: hotelDiscountPercent,locationOfTheHotel: hotelLocation, addressOfTheHotel: hotelAddress, contactNumber: hotelContactNumber)
        
        let defaults = UserDefaults.standard
        
        if let encodeData = defaults.data(forKey: "HOTEL") as? NSData {
            
            var decode = NSKeyedUnarchiver.unarchiveObject(with: encodeData as Data) as? [Hotel]
            
            decode?.append(newHotel)
            
            let encode = NSKeyedArchiver.archivedData(withRootObject: decode) as NSData
            
            defaults.set(encode, forKey: "HOTEL")
            
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

