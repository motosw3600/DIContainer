//
//  DIContainer.swift
//  DIContainer
//
//  Created by 박상우 on 2022/01/19.
//

import UIKit

class DIContainer {
    func createMainCoordinator(navigationController: UINavigationController) -> MainCoordinator {
        return MainCoordinator(navigationController: navigationController, dependencies: self)
    }
}

extension DIContainer: MainCoordinatorDependencies {
    func createHomeViewController(actions: HomeViewModelActions) -> UIViewController {
        let viewModel = HomeViewModel(actions: actions)
        return HomeViewController(viewModel: viewModel)
    }
    
    func createDetailViewController() -> UIViewController {
        return DetailViewController()
    }
}
