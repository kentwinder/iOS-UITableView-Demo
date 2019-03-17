//
//  BookTableViewCell.swift
//  TableView-Demo
//
//  Created by Kent Winder on 03/12/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookDescLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
