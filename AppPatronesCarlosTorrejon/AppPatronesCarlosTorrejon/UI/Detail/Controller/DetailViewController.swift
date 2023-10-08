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

    // Suponemos que tienes una etiqueta y una imagen para mostrar el nombre e imagen del personaje.
    @IBOutlet weak var characterNameLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    @IBOutlet weak var characterDescriptionLabel: UILabel!
    
    var viewModel: DetailViewModelProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        characterDescriptionLabel.numberOfLines = 0
        characterDescriptionLabel.lineBreakMode = .byWordWrapping
        
        viewModel?.onViewsLoaded()
    }
}

//MARK: - EXTENSION -
extension DetailViewController: DetailViewProtocol {
    func updateViews() {
        characterNameLabel.text = viewModel?.characterData?.name
        if let imageName = viewModel?.characterData?.image {
            characterImageView.image = UIImage(named: imageName)
        }
        characterDescriptionLabel.text = viewModel?.characterData?.description
    }
}
