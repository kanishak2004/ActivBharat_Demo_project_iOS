//
//  TrainViewController.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 11/04/26.
//

import UIKit

final class TrainViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var fixedStartButton: UIButton!

    private let viewModel = TrainViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTableView()
        print("TrainVC -> viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TrainVC -> viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TrainVC -> viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TrainVC -> viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TrainVC -> viewDidDisappear")
    }
    
    
    private func configureView() {
        view.backgroundColor = .systemGroupedBackground
        navigationController?.setNavigationBarHidden(true, animated: false)
        fixedStartButton.layer.cornerRadius = 18
        fixedStartButton.layer.masksToBounds = true
        fixedStartButton.setTitleColor(.white, for: .normal)
    }

    private func configureTableView() {
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 110, right: 0)
//        tableView.scrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: 110, right: 0)
        
        // DataSource & Delegate.........
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // Registering the XIBs........
        tableView.register(
            UINib(nibName: TrainHeroTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: TrainHeroTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: TrainDetailsTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: TrainDetailsTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: TrainGoalsTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: TrainGoalsTableViewCell.reuseIdentifier
        )
    }

    
    // This Function is for the Connect Screen,
    
    private func openConnectScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let connectViewController = storyboard.instantiateViewController(
            withIdentifier: "ConnectViewController"
        ) as? ConnectViewController else {
            return
        }
        navigationController?.pushViewController(connectViewController, animated: true)
    }
}

extension TrainViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: TrainHeroTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! TrainHeroTableViewCell
            cell.configure(with: viewModel.heroCard)
            return cell

        case 1:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: TrainDetailsTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! TrainDetailsTableViewCell
            cell.configure(with: viewModel.trainingCard)
            cell.onFeaturedTap = { [weak self] in
                self?.openConnectScreen()
            }
            return cell

        case 2:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: TrainGoalsTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! TrainGoalsTableViewCell
            cell.configure(with: viewModel.goalCard)
            return cell

        default:
            return UITableViewCell()
        }
    }
}
extension TrainViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 305
        case 1:
            return 548
        case 2:
            return 430
        default:
            return UITableView.automaticDimension
        }
    }
}
