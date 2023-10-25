//
//  DetailViewModel.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 8/10/23.
//

import Foundation

//MARK: - PROTOCOLO -
protocol DetailViewModelProtocol {
    func onViewsLoaded()
}

//MARK: - CLASE -
final class DetailViewModel: DetailViewModelProtocol {
    
    private weak var viewDelegate: DetailViewProtocol?
    private var appleData: AppleModel?
    
    init(
        apple: AppleModel?,
        viewDelegate: DetailViewProtocol?
    ) {
        self.appleData = apple
        self.viewDelegate = viewDelegate
    }
    
    func onViewsLoaded() {
        viewDelegate?.updateViews(with: appleData)
    }
}
