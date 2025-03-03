//
//  PreviewPresenter.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

protocol PreviewViewProtocol: AnyObject {
    func setupUI()
    func constraintsUI()
}

protocol PreviewPresenterProtocol {
    func viewDidLoad()
    func startTimerForTransition()
}

class PreviewPresenter: PreviewPresenterProtocol {
    
    weak var view: PreviewViewProtocol?
    weak var navigationDelegate: PreviewNavigationDelegate?
    
    init(view: PreviewViewProtocol, navigationDelegate: PreviewNavigationDelegate) {
        self.view = view
        self.navigationDelegate = navigationDelegate
    }
    
    
    // MARK: PreviewPresenterProtocol
    func viewDidLoad() {
        view?.setupUI()
        view?.constraintsUI()
        
        startTimerForTransition()
    }
    
    func startTimerForTransition() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.navigationDelegate?.navigateToMainViewController()
        }
    }

}
