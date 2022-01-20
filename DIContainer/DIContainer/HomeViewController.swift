//
//  HomeViewController.swift
//  DIContainer
//
//  Created by 박상우 on 2022/01/19.
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewModel: HomeViewModelIO?
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("next", for: .normal)
        button.backgroundColor = .darkGray
        button.addTarget(self, action: #selector(didTappedNextButton), for: .touchUpInside)
        return button
    }()
    
    init(viewModel: HomeViewModelIO) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.configureView()
    }
    
    private func configureView() {
        self.view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
    
    @objc func didTappedNextButton() {
        self.viewModel?.didTappedNextButton()
    }
}
