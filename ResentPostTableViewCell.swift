//
//  ResentPostTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 22/04/26.
//

import UIKit

final class ResentPostTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ResentPostTableViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var shareImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(title: String) {
        titleLabel.text = title
    }
}
