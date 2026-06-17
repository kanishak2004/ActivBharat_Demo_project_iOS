//
//  ExploreViewController.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import UIKit

final class ExploreViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    private let viewModel = ExploreViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTableView()
    }

    private func configureView() {
        view.backgroundColor = .systemBackground
    }

    private func configureTableView() {
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 16, right: 0)
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(
            UINib(nibName: ExploreHeaderTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: ExploreHeaderTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: UpcomingEventsCarouselTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: UpcomingEventsCarouselTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: PrepareRunHeaderTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: PrepareRunHeaderTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: WorkoutCarouselTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: WorkoutCarouselTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: TrendingReadsTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: TrendingReadsTableViewCell.reuseIdentifier
        )
    }
}

extension ExploreViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: ExploreHeaderTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! ExploreHeaderTableViewCell
            cell.configure(title: "Explore", subtitle: "Upcoming Events")
            return cell

        case 1:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: UpcomingEventsCarouselTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! UpcomingEventsCarouselTableViewCell
            cell.configure(with: viewModel.events)
            return cell

        case 2:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: PrepareRunHeaderTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! PrepareRunHeaderTableViewCell
            cell.configure(title: "Prepare For Your Run", buttonTitle: "See All")
            return cell

        case 3:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: WorkoutCarouselTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! WorkoutCarouselTableViewCell
            cell.configure(with: viewModel.workouts)
            return cell

        default:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: TrendingReadsTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! TrendingReadsTableViewCell
            cell.configure(
                title: "Trending Reads on Wellness",
                featured: viewModel.featuredArticle,
                articles: viewModel.readArticles
            )
            return cell
        }
    }
}

extension ExploreViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 92
        case 1:
            return 172
        case 2:
            return 64
        case 3:
            return 224
        default:
            return 682
        }
    }
}
