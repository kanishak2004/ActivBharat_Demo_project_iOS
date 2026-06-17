//
//  ConnectComposerTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 16/04/26.
//

import UIKit

final class ConnectComposerTableViewCell: UITableViewCell {

    static let reuseIdentifier = "ConnectComposerTableViewCell"
    private let dashedLayerName = "DashedBorderLayer"

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var heroImageView: UIImageView!
    @IBOutlet private weak var messageLabel: UILabel!
    @IBOutlet private weak var actionButton: UIButton!
    @IBOutlet private weak var dashedContainerView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()

        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear

        dashedContainerView.layer.cornerRadius = 18
        
        
        dashedContainerView.clipsToBounds = false
        dashedContainerView.backgroundColor = UIColor.systemPurple.withAlphaComponent(0.08)

        actionButton.layer.cornerRadius = 0
        actionButton.backgroundColor = UIColor(red: 0.88, green: 0.76, blue: 0.95, alpha: 1)
        actionButton.layer.borderWidth = 1
        actionButton.layer.borderColor = UIColor.systemPurple.withAlphaComponent(0.18).cgColor

        heroImageView.contentMode = .scaleAspectFit
        heroImageView.clipsToBounds = false


        heroImageView.layer.shadowColor = UIColor.black.cgColor
        heroImageView.layer.shadowOpacity = 0.25
        heroImageView.layer.shadowOffset = CGSize(width: 0, height: 6)
        heroImageView.layer.shadowRadius = 10
        heroImageView.layer.masksToBounds = false
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        applyDashedBorder()
    }

    private func applyDashedBorder() {
        dashedContainerView.layer.sublayers?.removeAll(where: {
            $0.name == dashedLayerName
        })

        let shapeLayer = CAShapeLayer()
        shapeLayer.name = dashedLayerName
        shapeLayer.strokeColor = UIColor.systemPurple.withAlphaComponent(0.6).cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = 1.5
        shapeLayer.lineDashPattern = [6, 4]

        let path = UIBezierPath(
            roundedRect: dashedContainerView.bounds,
            cornerRadius: 18
        )

        shapeLayer.path = path.cgPath
        shapeLayer.frame = dashedContainerView.bounds
        shapeLayer.lineCap = .round

        dashedContainerView.layer.insertSublayer(shapeLayer, at: 0)
    }

    func configure(with model: ConnectComposerModel) {
        titleLabel.text = model.title
        messageLabel.text = model.message
        actionButton.setTitle(model.ctaTitle, for: .normal)

        heroImageView.image = UIImage(named: "card_stack_3d")
    }
}
