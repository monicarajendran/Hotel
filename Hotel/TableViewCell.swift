//
//  TableViewCell.swift
//  Hotel
//
//  Created by user on 20/06/1939 Saka.
//  Copyright © 1939 Saka user. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleOfTheHotel: UILabel!
    
    
    @IBOutlet weak var locationOfTheHotel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
