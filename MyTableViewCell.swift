//
//  MyTableViewCell.swift
//  TableViews_DataPassing
//
//  Created by Apple on 12/29/19.
//  Copyright © 2019 HamzaMustafa. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var title_text: UILabel!
    @IBOutlet weak var subtitle_text: UILabel!
    @IBOutlet weak var Image_icon: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
