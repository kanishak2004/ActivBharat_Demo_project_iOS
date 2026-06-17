//
//  PrepareRunHeaderTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import UIKit

final class PrepareRunHeaderTableViewCell: UITableViewCell {

    static let reuseIdentifier = "PrepareRunHeaderTableViewCell"

    @IBOutlet private weak var iconContainerView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var actionButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        iconContainerView.layer.cornerRadius = 18
        actionButton.layer.cornerRadius = 15
        actionButton.layer.masksToBounds = true
    }

    func configure(title: String, buttonTitle: String) {
        titleLabel.text = title
        actionButton.setTitle(buttonTitle, for: .normal)
    }
}
