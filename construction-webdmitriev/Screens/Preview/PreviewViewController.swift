//
//  PreviewViewController.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

protocol PreviewNavigationDelegate: AnyObject {
    func navigateToMainViewController()
}

class PreviewViewController: UIViewController, PreviewViewProtocol, PreviewNavigationDelegate {
    
    var presenter: PreviewPresenterProtocol!
    
    private lazy var contentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    private lazy var logotype: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .logotypeWhite
        $0.contentMode = .scaleAspectFit
        return $0
    }(UIImageView())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
    
    internal func setupUI() {
        contentView.backgroundColor = .appBg
        
        view.addSubview(contentView)
        contentView.addSubview(logotype)
    }

    internal func constraintsUI() {
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            logotype.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0),
            logotype.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            logotype.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
    }
    
    func navigateToMainViewController() {
        let tabBarVC = TabBarController()
        
        // Устанавливаем TabBarController как rootViewController
        if let window = view.window {
            window.rootViewController = tabBarVC
            window.makeKeyAndVisible()
        }
    }
    
}
