//
//  Logotype.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 06.03.2025.
//

import UIKit

final class Logotype {
    
    private let insert: CGFloat = UIBuilder().offsetPage
    
    func createLogotypeSection() -> NSCollectionLayoutSection {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(50))
//        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 1)
        
//        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(312), heightDimension: .estimated(44))
//        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, repeatingSubitem: item, count: 3)
//        group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        return section
    }
    
}
