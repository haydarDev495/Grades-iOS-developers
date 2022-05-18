//
//  InternTableViewCell.swift
//  Grades iOS developers
//
//  Created by Haydar Bekmuradov on 18.05.22.
//

import UIKit

class InternTableViewCell: UITableViewCell {

    @IBOutlet weak var internTextLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
