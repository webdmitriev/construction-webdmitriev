//
//  MainViewController.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

final class MainViewController: UIViewController, UICollectionViewDelegate {
    
    // 1. create collectionSection
    private lazy var collectionView: UICollectionView = {
        $0.backgroundColor = .appBg
        $0.dataSource = self
        
        $0.register(LogotypeCell.self, forCellWithReuseIdentifier: LogotypeCell.reuseID)
        
        $0.register(TitleSectionCell.self, forCellWithReuseIdentifier: TitleSectionCell.reuseID)
        
        $0.register(BuyAndSellCell.self, forCellWithReuseIdentifier: BuyAndSellCell.reuseID)

        $0.delegate = self
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: createLayout()))
    
    // 2. create createLayout
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { section, _ in
            switch section {
            case 0: return self.logotypeSection
            case 1: return self.titleSection
            case 2: return self.buyAndSellSection
            default: return self.logotypeSection
            }
        }
    }
    
    // 3. Sections
    private lazy var logotypeSection = Logotype().createLogotypeSection()
    private lazy var titleSection = TitleSection().createSection()
    private lazy var buyAndSellSection = BuyAndSell().createSection()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .appGreen
        
        view.addSubview(collectionView)
    }
    
}
