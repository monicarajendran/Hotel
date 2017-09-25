//
//  ListOfHotels.swift
//  Hotel
//
//  Created by user on 21/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class ListOfHotelsTableView: UITableViewController {
    
    func arrayOfHotelObjects() -> [Hotel] {
        
        if let hotelNames = UserDefaults.standard.data(forKey: "HOTEL") as? NSData {
            
        let arrayOfHotel = NSKeyedUnarchiver.unarchiveObject(with: hotelNames as Data) as? [Hotel]
    
        return arrayOfHotel!
            
        }
        else {
            
            let emptyArray : [AnyObject] = []
            return emptyArray as! [Hotel]
        }
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        self.navigationController?.navigationBar.topItem?.title = "HOTELS"
        
        self.tableView.reloadData()
        
       print(UserDefaults.standard.data(forKey: "HOTEL"))
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (arrayOfHotelObjects().count == nil) {
            
            return 0
        }
        
        else{
            
            return (arrayOfHotelObjects().count)
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelDetailPageCell", for: indexPath)
        
        cell.textLabel?.text = arrayOfHotelObjects()[indexPath.row].hotelName
        
        cell.detailTextLabel?.text = arrayOfHotelObjects()[indexPath.row].locationOfTheHotel
        
        return cell

        }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myIndex = indexPath.row
        guard let tableViewCell = self.storyboard?.instantiateViewController(withIdentifier: "HotelDetails") as? HotelDetails else {return}
        
        tableViewCell.indexRow = myIndex
        
        self.navigationController?.pushViewController(tableViewCell, animated: true)
    }
    
    }
