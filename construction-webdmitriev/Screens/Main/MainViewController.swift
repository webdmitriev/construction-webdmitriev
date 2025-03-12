//
//  MainViewController.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 01.03.2025.
//

import UIKit

final class MainViewController: UIViewController, UICollectionViewDelegate {
    
    // 1. create collectionSections
    private lazy var collectionView: UICollectionView = {
        $0.backgroundColor = .appBg
        $0.dataSource = self
        $0.delegate = self
        
        $0.register(LogotypeCell.self, forCellWithReuseIdentifier: LogotypeCell.reuseID)
        
        $0.register(TitleSectionCell.self, forCellWithReuseIdentifier: TitleSectionCell.reuseID)
        
        $0.register(BuyAndSellCell.self, forCellWithReuseIdentifier: BuyAndSellCell.reuseID)
        
        $0.register(TitleForBlocksCell.self, forCellWithReuseIdentifier: TitleForBlocksCell.reuseID)
        
        $0.register(TitleSectionCell.self, forCellWithReuseIdentifier: TitleSectionCell.reuseID)
        
        $0.register(ProductsHorizontalCell.self, forCellWithReuseIdentifier: ProductsHorizontalCell.reuseID)

        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: createLayout()))
    
    // 2. create createLayouts
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { section, _ in
            switch section {
            case 0: return self.logotypeSection
            case 1: return self.titleSection
            case 2: return self.buyAndSellSection
            case 3: return self.titleForBlockSection
            case 4: return self.productsTitleSection
            case 5: return self.productsHorizontalSection
            default: return self.logotypeSection
            }
        }
    }
    
    // 3. Sections
    private lazy var logotypeSection = Logotype().createLogotypeSection()
    private lazy var titleSection = TitleSection().createSection()
    private lazy var buyAndSellSection = BuyAndSell().createSection()
    private lazy var titleForBlockSection = TitleForBlocks().createSection()
    private lazy var productsTitleSection = TitleSection().createSection()
    private lazy var productsHorizontalSection = ProductsHorizontal().createSection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .appBg
        
        view.addSubview(collectionView)
    }
    
}
