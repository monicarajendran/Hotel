//
//  SettingsPageOfAdmin.swift
//  Hotel
//
//  Created by user on 21/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class SettingsPageOfAdmin: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.topItem?.title = "SETTINGS"
        
    }
    var myUserName = String()
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var emailIdOfTheUser: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        userName.text = myUserName

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 2 {
            guard let vControllerFour = storyboard?.instantiateViewController(withIdentifier: "reset") else {return}
            
            navigationController?.pushViewController(vControllerFour, animated: true)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)

            if indexPath.row == 3 {
                let alert = UIAlertController(title: "Logout", message: "Are You Sure", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil))
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainPage") as? MainPage else { return }
                    self.navigationController!.popViewController(animated: true)}))
  
                self.present(alert, animated: true, completion: nil)

                
            }
        }
        
        

        
        }
    
    

