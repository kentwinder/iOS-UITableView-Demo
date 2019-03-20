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
    
    var book: Book! {
        didSet {
            bookNameLabel.text = book.name
            bookDescLabel.text = book.shortDesc
            authorLabel.text = "by " + book.author
        }
    }

}
