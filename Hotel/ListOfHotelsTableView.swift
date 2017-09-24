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
            
            let some : [AnyObject] = []
            return some as! [Hotel]
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
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
