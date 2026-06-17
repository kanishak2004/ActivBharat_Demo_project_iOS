//
//  UpcomingEventCollectionViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import UIKit

final class UpcomingEventCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "UpcomingEventCollectionViewCell"

    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var routeImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var locationLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var avatarOneImageView: UIImageView!
    @IBOutlet private weak var avatarTwoImageView: UIImageView!
    @IBOutlet private weak var avatarThreeImageView: UIImageView!
    @IBOutlet private weak var avatarFourImageView: UIImageView!
    @IBOutlet private weak var avatarFiveImageView: UIImageView!
    @IBOutlet private weak var overflowLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 16
        cardView.layer.borderWidth = 1.25
        cardView.layer.borderColor = UIColor.systemPurple.withAlphaComponent(0.4).cgColor
        cardView.layer.shadowColor = UIColor.systemPurple.withAlphaComponent(0.12).cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowRadius = 7
        cardView.layer.shadowOffset = CGSize(width: 0, height: 3)
        routeImageView.layer.cornerRadius = 12
        routeImageView.clipsToBounds = true

        [
            avatarOneImageView,
            avatarTwoImageView,
            avatarThreeImageView,
            avatarFourImageView,
            avatarFiveImageView
        ].forEach {
            $0?.layer.cornerRadius = 16
            $0?.layer.borderWidth = 2
            $0?.layer.borderColor = UIColor.white.cgColor
            $0?.clipsToBounds = true
        }
    }

    func configure(with model: ExploreEventModel) {
        routeImageView.image = UIImage(named: model.routeImageName)
        titleLabel.text = model.title
        locationLabel.text = model.location
        dateLabel.text = model.date
        overflowLabel.text = model.attendeeCountText

        let avatarViews = [
            avatarOneImageView,
            avatarTwoImageView,
            avatarThreeImageView,
            avatarFourImageView,
            avatarFiveImageView
        ]

        for (index, imageView) in avatarViews.enumerated() {
            imageView?.image = index < model.attendeeImageNames.count
                ? UIImage(named: model.attendeeImageNames[index])
                : nil
        }
    }
}
