//
//  WorkoutCardCollectionViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import UIKit

final class WorkoutCardCollectionViewCell: UICollectionViewCell {

    static let reuseIdentifier = "WorkoutCardCollectionViewCell"

    @IBOutlet private weak var cardView: UIView!
    @IBOutlet private weak var workoutImageView: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        cardView.layer.cornerRadius = 12
        cardView.layer.borderWidth = 1
        cardView.layer.borderColor = UIColor.systemGray5.cgColor
        cardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.05).cgColor
        cardView.layer.shadowOpacity = 1
        cardView.layer.shadowRadius = 8
        cardView.layer.shadowOffset = CGSize(width: 0, height: 3)
        workoutImageView.layer.cornerRadius = 10
        workoutImageView.clipsToBounds = true
    }

    func configure(with model: ExploreWorkoutModel) {
        workoutImageView.image = UIImage(named: model.imageName)
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitle
    }
}
