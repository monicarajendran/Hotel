//
//  HotelDetails.swift
//  Hotel
//
//  Created by user on 02/07/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class HotelDetails: UIViewController {
    
    @IBOutlet weak var nameOfTheHotel: UILabel!
    
    @IBOutlet weak var hotelStarRating: UILabel!

    @IBOutlet weak var discountpercentOfTheHotel: UILabel!
    
    @IBOutlet weak var hotelLocation: UILabel!
    
    @IBOutlet weak var hotelAddress: UILabel!
    
    @IBOutlet weak var hotelContactNumber: UILabel!
    
    var indexRow = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hotelObjects = UserDefaults.standard.data(forKey: "HOTEL") as! NSData
        
        let arrayOfHotelObjects = NSKeyedUnarchiver.unarchiveObject(with: hotelObjects as Data) as! [Hotel]
        
        nameOfTheHotel.text = arrayOfHotelObjects[indexRow].hotelName
        discountpercentOfTheHotel.text = arrayOfHotelObjects[indexRow].discountPercent
        hotelLocation.text = arrayOfHotelObjects[indexRow].locationOfTheHotel
        hotelAddress.text = arrayOfHotelObjects[indexRow].addressOfTheHotel
        hotelContactNumber.text = arrayOfHotelObjects[indexRow].contactNumber
        
        
    }

    
   
}
