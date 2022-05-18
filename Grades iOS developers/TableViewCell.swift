//
//  TableViewCell.swift
//  Grades iOS developers
//
//  Created by Haydar Bekmuradov on 18.05.22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var levelsLabelText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
