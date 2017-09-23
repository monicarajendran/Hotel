//
//  File.swift
//  Hotel
//
//  Created by user on 29/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import Foundation

class Hotel : NSObject, NSCoding{
    
    var hotelName : String
    var discountPercent: String
    var locationOfTheHotel: String
    var addressOfTheHotel: String
    var contactNumber: String
    
    
    init(hotelName : String,discountPercent : String,locationOfTheHotel : String,addressOfTheHotel : String,contactNumber : String) {
        
        self.hotelName = hotelName
        self.discountPercent = discountPercent
        self.locationOfTheHotel = locationOfTheHotel
        self.addressOfTheHotel = addressOfTheHotel
        self.contactNumber = contactNumber

        
        
    }
      required convenience init?(coder decoder: NSCoder) {
        guard let hotelName = decoder.decodeObject(forKey: "hotelName") as? String,
            let discountPercent = decoder.decodeObject(forKey: "discountPercent") as? String,
            let locationOfTheHotel = decoder.decodeObject(forKey: "locationOfTheHotel") as? String,
            let addressOfTheHotel = decoder.decodeObject(forKey: "addressOfTheHotel") as? String, let contactNumber = decoder.decodeObject(forKey: "contactNumber") as? String
            else { return nil }
        
        self.init(
            hotelName: hotelName,
            discountPercent: discountPercent,
            locationOfTheHotel: locationOfTheHotel,
            addressOfTheHotel: addressOfTheHotel,
            contactNumber: contactNumber
        )
        
    }
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(self.hotelName, forKey: "hotelName")
        aCoder.encode(self.addressOfTheHotel, forKey: "addressOfTheHotel")
        aCoder.encode(self.locationOfTheHotel, forKey: "locationOfTheHotel")
        aCoder.encode(self.discountPercent, forKey: "discountPercent")
        aCoder.encode(self.contactNumber,forKey: "contactNumber")
    }
    
}



    
    
    
    
