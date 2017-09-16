//
//  finalPage.swift
//  Hotel
//
//  Created by user on 15/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit
class HotelDetailPage: UIViewController,UITextFieldDelegate {


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
    
    
    
    
    
    
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
