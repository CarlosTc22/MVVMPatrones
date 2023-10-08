//
//  HomeViewModel.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 7/10/23.
//

import Foundation


//MARK: - PROTOCOLO -
protocol HomeViewModelProtocol {
    var dataCount: Int { get }
    func onViewsLoaded()
    func data(at index: Int) -> AppleModel?
    func onItemSelected(at index: Int)
}




//MARK: - CLASE -
final class HomeViewModel {
    
    private weak var viewDelegate: HomeViewProtocol?
    private var viewData = AppleCollection()
    
    init(viewDelegate: HomeViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        viewData = sampleAppleData
        viewDelegate?.updateViews()
    }
    
}

//MARK: - EXTENSION
extension HomeViewModel: HomeViewModelProtocol {
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else { return }
        viewDelegate?.navigateToDetail(with: data)
        
    }
    
    
    func data(at index: Int) -> AppleModel? {
        guard index < dataCount else { return nil }
        return viewData[index]
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    
}

