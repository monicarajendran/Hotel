//
//  ListOfHotels.swift
//  Hotel
//
//  Created by user on 21/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class ListOfHotelsTableView: UITableViewController {
    
    let newHotel = UserDefaults.standard.dictionary(forKey: "hotel") as? [String:[String]]
    
    var arrayOfHotel = [String]()
    
    var arrayOfHotelLocation = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(newHotel?.count)
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (newHotel == nil) {
            return 0
        }else{
            return (newHotel?.count)!
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        self.navigationItem.setHidesBackButton(true, animated: false)
        
        self.navigationController?.navigationBar.topItem?.title = "HOTELS"
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HotelDetailPageCell", for: indexPath)
        
        let newHotelName = UserDefaults.standard.string(forKey: "hotelName")
        
        let row = indexPath
        if indexPath.row != nil {
            
            if indexPath.row == (newHotel?.count)! - 1 {
            
                cell.textLabel?.text = newHotel?[newHotelName!]?[0]
                
                cell.detailTextLabel?.text = newHotel?[newHotelName!]?[2]
                
           }
        }
        
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
