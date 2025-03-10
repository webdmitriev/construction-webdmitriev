//
//  BuyAndSell.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 09.03.2025.
//

import UIKit

final class BuyAndSell {
    
    private let appBuilder = UIBuilder()
    
    func createSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute((appBuilder.screenSizeW - appBuilder.offsetPage * 1.6) / 2), heightDimension: .absolute(135))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 8)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 0, leading: appBuilder.offsetPage, bottom: 30, trailing: 0)
        
        return section
    }
}
