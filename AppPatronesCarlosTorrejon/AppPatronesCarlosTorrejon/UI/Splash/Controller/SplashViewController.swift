//
//  SplashViewController.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 6/10/23.
//

import UIKit

//MARK: - PROTOCOLO -
protocol SplashViewProtocol: AnyObject {
    func showLoading(_ show: Bool)
    func navigateToHome()
}


//MARK: - CLASE -
class SplashViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    var viewModel: SplashViewModelProtocol?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = SplashViewModel(viewDelegate: self)
        viewModel?.onViewLoaded()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
}

//MARK: - EXTENSION -
extension SplashViewController: SplashViewProtocol {
    func showLoading(_ show: Bool) {
        switch show {
        case true where !activityIndicator.isAnimating: activityIndicator.startAnimating()
        case false where activityIndicator.isAnimating: activityIndicator.stopAnimating()
        default: break
        }
    }
    
    func navigateToHome() {
        let nextVC = HomeTableViewController()
        navigationController?.setViewControllers([nextVC], animated: true)
    }
    
    
}
