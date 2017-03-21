//
//  ViewController.swift
//  PlaygroundDevelopementDemo
//
//  Created by Vincent BACH on 21/03/2017.
//  Copyright © 2017 babzich. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private let titleLabel: UILabel

    // MARK: - Initializers

    init() {
        self.titleLabel = UILabel()

        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    // MARK: - Setup

    private func setupView() {
        [titleLabel].forEach { view.addSubview($0) }
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = "Hey bruva"

        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

}

