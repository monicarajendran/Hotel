//
//  TableViewOfHotels.swift
//  Hotel
//
//  Created by user on 19/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class TableViewOfHotels: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        guard let controller = self.storyboard?.instantiateViewController(withIdentifier: "ViewControllerFive") else{return}
        self.navigationController?.present(controller, animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
