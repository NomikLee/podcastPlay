//
//  podcasTableViewCell.swift
//  podcastPlay
//
//  Created by Pinocchio on 2023/8/12.
//

import UIKit

class podcasTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var podcasImageView: UIImageView!
    @IBOutlet weak var podcasNameLable: UILabel!
    @IBOutlet weak var podcasPeopleNameLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
