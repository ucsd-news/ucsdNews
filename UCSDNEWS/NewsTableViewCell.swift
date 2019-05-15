//
//  NewsTableViewCell.swift
//  UCSDNEWS
//
//  Created by Donald Truong on 5/14/19.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var webImageView: UIImageView!
    @IBOutlet weak var webTitle: UILabel!
    @IBOutlet weak var webSummary: UILabel!
    @IBOutlet weak var hyperlinkLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
