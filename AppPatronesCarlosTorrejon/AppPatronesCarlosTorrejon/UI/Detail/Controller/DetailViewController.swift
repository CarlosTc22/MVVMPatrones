//
//  DetailViewController.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 7/10/23.
//

import UIKit

//MARK: - PROTOCOLO -
protocol DetailViewProtocol: AnyObject {
    func updateViews()
}

//MARK: - CLASE -
class DetailViewController: UIViewController {

    @IBOutlet weak var appleNameLabel: UILabel!
    @IBOutlet weak var appleDescriptionLabel: UILabel!
    @IBOutlet weak var appleImageView: UIImageView!
    
    var viewModel: DetailViewModelProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appleDescriptionLabel.numberOfLines = 0
        appleDescriptionLabel.lineBreakMode = .byWordWrapping
        
        viewModel?.onViewsLoaded()
    }
}

//MARK: - EXTENSION -
extension DetailViewController: DetailViewProtocol {
    func updateViews() {
        appleNameLabel.text = viewModel?.appleData?.name
        if let imageName = viewModel?.appleData?.image {
            appleImageView.image = UIImage(named: imageName)
        }
        appleDescriptionLabel.text = viewModel?.appleData?.description
    }
}
