//
//  HomeTableViewController.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 6/10/23.
//

import UIKit

//MARK: - PROTOCOLO -
protocol HomeViewProtocol: AnyObject {
    func navigateToDetail(
        with data: AppleModel?
    )
    func updateViews()
}

//MARK: - CLASE -
class HomeTableViewController: UITableViewController {
    
    var viewModel: HomeViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        viewModel?.onViewsLoaded()
    }
    
    private func registerCells() {
        tableView.register(
            UINib(
                nibName: "HomeCellTableViewCell",
                bundle: nil
            ),
            forCellReuseIdentifier: "HomeCell"
        )
    }
    
    override func numberOfSections(
        in tableView: UITableView
    ) -> Int {
        
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        
        return viewModel?.dataCount ?? 0
    }
    
    //Update views
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "HomeCell",
            for: indexPath
        ) as? HomeCellTableViewCell else {
            return UITableViewCell()
        }
        
        if let data = viewModel?.data(
            at: indexPath.row
        ) {
            cell.updateViews(
                data: data
            )
        }
        return cell
    }
    
    //Select item
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        viewModel?.onItemSelected(
            at: indexPath.row
        )
    }
}


//MARK: - EXTENSION -
extension HomeTableViewController: HomeViewProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(
        with data: AppleModel?
    ) {
        let nextVC = DetailViewController()
        nextVC.viewModel = DetailViewModel(
            apple: data,
            viewDelegate: nextVC
        )
        navigationController?.pushViewController(
            nextVC,
            animated: true
        )
    }
    
}
