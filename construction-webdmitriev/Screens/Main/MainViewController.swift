//
//  MainViewController.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

final class MainViewController: UIViewController {
    
    private let builder = UIBuilder()
    
    lazy var contentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Hello, World!"
        $0.textColor = .appBlack
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .appWhite
        self.navigationController?.title = "Title"
        
        setupUI()
        contsraintsUI()
    }
    
    func setupUI() {
        view.addSubview(contentView)
        contentView.addSubview(titleLabel)
    }
    
    func contsraintsUI() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: builder.offsetPage),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -builder.offsetPage),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 100),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
        ])
    }
    
}
