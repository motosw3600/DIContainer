//
//  DetailViewController.swift
//  DIContainer
//
//  Created by 박상우 on 2022/01/19.
//

import UIKit

class DetailViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .darkGray
    }
}
