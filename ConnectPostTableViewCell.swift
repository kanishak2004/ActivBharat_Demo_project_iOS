//
//  ConnectPostTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 16/04/26.
//

import UIKit

final class ConnectPostTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ConnectPostTableViewCell"

    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var authorLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var captionLabel: UILabel!
    @IBOutlet private weak var mediaImageView: UIImageView!
    @IBOutlet private weak var mediaHeightConstraint: NSLayoutConstraint!
    @IBOutlet private weak var reactionsStackView: UIStackView!
    @IBOutlet private weak var reactionOneButton: UIButton!
    @IBOutlet private weak var reactionTwoButton: UIButton!
    @IBOutlet private weak var reactionThreeButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        cardView.layer.cornerRadius = 18
        cardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.08).cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowRadius = 10
        cardView.layer.shadowOffset = CGSize(width: 0, height: 4)
        avatarImageView.layer.cornerRadius = 18
        avatarImageView.clipsToBounds = true
        mediaImageView.layer.cornerRadius = 18
        mediaImageView.clipsToBounds = true
        [reactionOneButton, reactionTwoButton, reactionThreeButton].forEach {
            $0?.backgroundColor = .white
            $0?.layer.cornerRadius = 14
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.systemGray5.cgColor
        }
    }

    func configure(with model: ConnectPostModel) {
        authorLabel.text = model.author
        timeLabel.text = model.timeText
        captionLabel.text = model.caption
        avatarImageView.image = UIImage(named: "man-running 1")
        mediaHeightConstraint.constant = 220
        mediaImageView.isHidden = false
        mediaImageView.image = UIImage(named: model.imageName)
        reactionOneButton.setTitle(model.reactions.indices.contains(0) ? model.reactions[0] : nil, for: .normal)
        reactionTwoButton.setTitle(model.reactions.indices.contains(1) ? model.reactions[1] : nil, for: .normal)
        reactionThreeButton.setTitle(model.reactions.indices.contains(2) ? model.reactions[2] : nil, for: .normal)
        reactionsStackView.layoutIfNeeded()
    }
}
