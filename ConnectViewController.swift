//
//  ConnectViewController.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 16/04/26.
//

import UIKit

final class ConnectViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!

    private let viewModel = ConnectViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureTableView()
        print("ConnectVC -> viewDidLoad")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ConnectVC -> viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ConnectVC -> viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ConnectVC -> viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ConnectVC -> viewDidDisappear")
    }
    
    private func configureView() {
        view.backgroundColor = .systemGroupedBackground
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    private func configureTableView() {
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.contentInset = UIEdgeInsets(top: 8, left: 0, bottom: 24, right: 0)
        tableView.dataSource = self
        tableView.delegate = self

        tableView.register(
            UINib(nibName: ConnectComposerTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: ConnectComposerTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: ConnectPostTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: ConnectPostTableViewCell.reuseIdentifier
        )
        tableView.register(
            UINib(nibName: ResentPostTableViewCell.reuseIdentifier, bundle: nil),
            forCellReuseIdentifier: ResentPostTableViewCell.reuseIdentifier
        )
    }
}

extension ConnectViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2 + viewModel.posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(
                withIdentifier: ConnectComposerTableViewCell.reuseIdentifier,
                for: indexPath
            ) as! ConnectComposerTableViewCell
            cell.configure(with: viewModel.composer)
            return cell
        }
        if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(
                    withIdentifier: ResentPostTableViewCell.reuseIdentifier,
                    for: indexPath
                ) as! ResentPostTableViewCell

                return cell
            }

        let cell = tableView.dequeueReusableCell(
            withIdentifier: ConnectPostTableViewCell.reuseIdentifier,
            for: indexPath
        ) as! ConnectPostTableViewCell
        cell.configure(with: viewModel.posts[indexPath.row - 2])
        return cell
    }
}

extension ConnectViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return UITableView.automaticDimension
        }
        return UITableView.automaticDimension
    }
}
