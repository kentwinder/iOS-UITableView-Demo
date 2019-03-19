//
//  BooksViewController.swift
//  TableView-Demo
//
//  Created by Kent Winder on 03/12/2019.
//  Copyright © 2019 Kent Winder. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var books: [Book] = []
    var selectedBook: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mockData()
        
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func mockData() {
        let book1 = Book()
        book1.name = "The Gulf: The Making of An American Sea"
        book1.shortDesc = "Hailed as a “nonfiction epic . . . in the tradition of Jared Diamond’s best-seller Collapse, and Simon Winchester’s Atlantic” (Dallas Morning News), Jack E. Davis’s The Gulf is “by turns informative, lyrical, inspiring and chilling for anyone who cares about the future of ‘America’s Sea’ ” (Wall Street Journal). Illuminating America’s political and economic relationship with the environment from the age of the conquistadors to the present, Davis demonstrates how the Gulf’s fruitful ecosystems and exceptional beauty empowered a growing nation. Filled with vivid, untold stories from the sportfish that launched Gulfside vacationing to Hollywood’s role in the country’s first offshore oil wells, this “vast and welltold story shows how we made the Gulf . . . [into] a ‘national sacrifice zone’ ” (Bill McKibben). The first and only study of its kind, The Gulf offers “a unique and illuminating history of the American Southern coast and sea as it should be written” (Edward O. Wilson). 26 illustrations"
        book1.author = "Jack E. Davis"
        books.append(book1)
        
        let book2 = Book()
        book2.name = "Less"
        book2.shortDesc = "Who says you can't run away from your problems? You are a failed novelist about to turn fifty. A wedding invitation arrives in the mail: your boyfriend of the past nine years is engaged to someone else. You can't say yes--it would be too awkward--and you can't say no--it would look like defeat. On your desk are a series of invitations to half-baked literary events around the world."
        book2.author = "Andrew Sean Greer "
        books.append(book2)
        
        let book3 = Book()
        book3.name = "Prairie Fires: The American Dreams of Laura Ingalls Wilder"
        book3.shortDesc = "Millions of readers of Little House on the Prairie believe they know Laura Ingalls―the pioneer girl who survived blizzards and near-starvation on the Great Plains, and the woman who wrote the famous autobiographical books. But the true saga of her life has never been fully told. Now, drawing on unpublished manuscripts, letters, diaries, and land and financial records, Caroline Fraser―the editor of the Library of America edition of the Little House series―masterfully fills in the gaps in Wilder’s biography. Revealing the grown-up story behind the most influential childhood epic of pioneer life, she also chronicles Wilder's tumultuous relationship with her journalist daughter, Rose Wilder Lane, setting the record straight regarding charges of ghostwriting that have swirled around the books."
        book3.author = "Caroline Fraser "
        books.append(book3)
        
        let book4 = Book()
        book4.name = "Half-light: Collected Poems 1965-2016"
        book4.shortDesc = "Gathered together, the poems of Frank Bidart perform one of the most remarkable transmutations of the body into language in contemporary literature. His pages represent the human voice in all its extreme registers, whether it’s that of the child-murderer Herbert White, the obsessive anorexic Ellen West, the tormented genius Vaslav Nijinsky, or the poet’s own. And in that embodiment is a transgressive empathy, one that recognizes our wild appetites, the monsters, the misfits, the misunderstood among us and inside us. Few writers have so willingly ventured to the dark places of the human psyche and allowed themselves to be stripped bare on the page with such candor and vulnerability. Over the past half century, Bidart has done nothing less than invent a poetics commensurate with the chaos and appetites of our experience."
        book4.author = "Frank Bidart"
        books.append(book4)
        
        let book5 = Book()
        book5.name = "Locking Up Our Own: Crime and Punishment in Black America"
        book5.shortDesc = "Former public defender James Forman, Jr. is a leading critic of mass incarceration and its disproportionate impact on people of color. In Locking Up Our Own, he seeks to understand the war on crime that began in the 1970s and why it was supported by many African American leaders in the nation’s urban centers."
        book5.author = "James Forman Jr."
        books.append(book5)
    }
}

extension BooksViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as! BookTableViewCell
        let book = books[indexPath.row]
        cell.bookNameLabel.text = book.name
        cell.bookDescLabel.text = book.shortDesc
        cell.authorLabel.text = "by " + book.author
        return cell
    }
}

extension BooksViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        selectedBook = books[indexPath.row]
        performSegue(withIdentifier: "BooksToBookDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BooksToBookDetails" {
            let bookDetailsViewController = segue.destination as! BookDetailsViewController
            bookDetailsViewController.book = selectedBook
        }
    }
}

