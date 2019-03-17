//
//  BookDetailsViewController.swift
//  TableView-Demo
//
//  Created by Kent Winder on 03/17/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {
    
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var bookDescLabel: UILabel!
    
    var book: Book!

    override func viewDidLoad() {
        super.viewDidLoad()
        setBookDetails()
    }

    func setBookDetails() {
        bookNameLabel.text = book.name
        authorLabel.text = "by \(book.author)"
        bookDescLabel.text = book.shortDesc
    }
}
