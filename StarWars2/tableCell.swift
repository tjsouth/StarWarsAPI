//
//  tableCell.swift
//  StarWars2
//
//  Created by Tim South on 11/16/22.
//

import UIKit

class tableCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var eyeLabel: UILabel!
    
    @IBOutlet weak var hairLabel: UILabel!
    
    @IBOutlet weak var homeWorld: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
