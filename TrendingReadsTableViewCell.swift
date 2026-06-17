//
//  TrendingReadsTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Codex on 12/05/26.
//

import UIKit

final class TrendingReadsTableViewCell: UITableViewCell {

    static let reuseIdentifier = "TrendingReadsTableViewCell"

    @IBOutlet private weak var sectionTitleLabel: UILabel!
    @IBOutlet private weak var featuredCardView: UIView!
    @IBOutlet private weak var featuredImageView: UIImageView!
    @IBOutlet private weak var featuredTitleLabel: UILabel!
    @IBOutlet private weak var featuredSubtitleLabel: UILabel!
    @IBOutlet private weak var cardOneView: UIView!
    @IBOutlet private weak var cardOneImageView: UIImageView!
    @IBOutlet private weak var cardOneTitleLabel: UILabel!
    @IBOutlet private weak var cardTwoView: UIView!
    @IBOutlet private weak var cardTwoImageView: UIImageView!
    @IBOutlet private weak var cardTwoTitleLabel: UILabel!
    @IBOutlet private weak var cardThreeView: UIView!
    @IBOutlet private weak var cardThreeImageView: UIImageView!
    @IBOutlet private weak var cardThreeTitleLabel: UILabel!
    @IBOutlet private weak var cardFourView: UIView!
    @IBOutlet private weak var cardFourImageView: UIImageView!
    @IBOutlet private weak var cardFourTitleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear

        [
            featuredCardView,
            cardOneView,
            cardTwoView,
            cardThreeView,
            cardFourView
        ].forEach {
            $0?.layer.cornerRadius = 16
            $0?.layer.borderWidth = 1
            $0?.layer.borderColor = UIColor.systemGray5.cgColor
            $0?.layer.shadowColor = UIColor.black.withAlphaComponent(0.05).cgColor
            $0?.layer.shadowOpacity = 1
            $0?.layer.shadowRadius = 8
            $0?.layer.shadowOffset = CGSize(width: 0, height: 3)
        }

        [
            featuredImageView,
            cardOneImageView,
            cardTwoImageView,
            cardThreeImageView,
            cardFourImageView
        ].forEach {
            $0?.layer.cornerRadius = 12
            $0?.clipsToBounds = true
        }
    }

    func configure(
        title: String,
        featured: ExploreArticleModel,
        articles: [ExploreArticleModel]
    ) {
        sectionTitleLabel.text = title
        featuredImageView.image = UIImage(named: featured.imageName)
        featuredTitleLabel.text = featured.title
        featuredSubtitleLabel.text = featured.subtitle

        let smallCards = [
            (cardOneImageView, cardOneTitleLabel),
            (cardTwoImageView, cardTwoTitleLabel),
            (cardThreeImageView, cardThreeTitleLabel),
            (cardFourImageView, cardFourTitleLabel)
        ]

        for (index, card) in smallCards.enumerated() {
            guard index < articles.count else { continue }
            card.0?.image = UIImage(named: articles[index].imageName)
            card.1?.text = articles[index].title
        }
    }
}
