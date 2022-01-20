//
//  MainCoordinator.swift
//  DIContainer
//
//  Created by 박상우 on 2022/01/19.
//

import UIKit

protocol MainCoordinatorDependencies {
    func createHomeViewController(actions: HomeViewModelActions) -> UIViewController
    func createDetailViewController() -> UIViewController
}

final class MainCoordinator {
    private var navigationController: UINavigationController?
    private let dependencies: MainCoordinatorDependencies
    
    init(navigationController: UINavigationController, dependencies: MainCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    func start() {
        let actions = HomeViewModelActions(showDetail: showDetailViewController)
        let homeViewController = self.dependencies.createHomeViewController(actions: actions)
        self.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    private func showDetailViewController() {
        let detailViewController = dependencies.createDetailViewController()
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
