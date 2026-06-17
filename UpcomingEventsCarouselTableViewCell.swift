//
//  UpcomingEventsCarouselTableViewCell.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import UIKit

final class UpcomingEventsCarouselTableViewCell: UITableViewCell {

    static let reuseIdentifier = "UpcomingEventsCarouselTableViewCell"

    @IBOutlet private weak var collectionView: UICollectionView!
    private var items: [ExploreEventModel] = []

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .clear
        configureCollectionView()
    }

    func configure(with items: [ExploreEventModel]) {
        self.items = items
        collectionView.reloadData()
    }

    private func configureCollectionView() {
        collectionView.backgroundColor = .clear
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(
            UINib(nibName: UpcomingEventCollectionViewCell.reuseIdentifier, bundle: nil),
            forCellWithReuseIdentifier: UpcomingEventCollectionViewCell.reuseIdentifier
        )
    }
}

extension UpcomingEventsCarouselTableViewCell:
UICollectionViewDataSource,
UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout {

    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        items.count
    }

    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: UpcomingEventCollectionViewCell.reuseIdentifier,
            for: indexPath
        ) as! UpcomingEventCollectionViewCell
        cell.configure(with: items[indexPath.item])
        return cell
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        CGSize(width: 286, height: 160)
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        10
    }

    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
    }
}
