//
//  HomeViewModel.swift
//  DIContainer
//
//  Created by 박상우 on 2022/01/19.
//

import Foundation

struct HomeViewModelActions {
    let showDetail: () -> Void
}

protocol HomeViewModelInput {
    func didTappedNextButton()
}

protocol HomeViewModelOutput { }

protocol HomeViewModelIO: HomeViewModelInput, HomeViewModelOutput { }

final class HomeViewModel: HomeViewModelIO {
    private let actions: HomeViewModelActions
    
    init(actions: HomeViewModelActions) {
        self.actions = actions
    }
}

extension HomeViewModel {
    func didTappedNextButton() {
        actions.showDetail()
    }
}
