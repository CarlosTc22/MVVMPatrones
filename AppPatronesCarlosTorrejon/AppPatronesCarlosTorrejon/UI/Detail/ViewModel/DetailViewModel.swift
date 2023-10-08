//
//  DetailViewModel.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 8/10/23.
//

import Foundation

//MARK: - PROTOCOLO -
protocol DetailViewModelProtocol {
    var characterData: CharacterModel? { get }
    func onViewsLoaded()
}

//MARK: - CLASE -
final class DetailViewModel: DetailViewModelProtocol {
    
    private weak var viewDelegate: DetailViewProtocol?
    var characterData: CharacterModel?

    init(character: CharacterModel?, viewDelegate: DetailViewProtocol?) {
        self.characterData = character
        self.viewDelegate = viewDelegate
    }

    func onViewsLoaded() {
        viewDelegate?.updateViews()
    }
}
