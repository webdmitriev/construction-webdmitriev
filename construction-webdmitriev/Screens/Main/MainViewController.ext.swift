//
//  MainViewController.ext.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 06.03.2025.
//

import UIKit

extension MainViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        CollectionSection.MockData().count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        CollectionSection.MockData()[section].items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = CollectionSection.MockData()[indexPath.section].items[indexPath.item]
        
        switch indexPath.section {
        case 0:
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LogotypeCell.reuseID, for: indexPath) as! LogotypeCell
        cell.setupCell(item: item)
        return cell
        case 1:
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleSectionCell.reuseID, for: indexPath) as! TitleSectionCell
        cell.setupCell(item: item)
        return cell
        case 2:
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BuyAndSellCell.reuseID, for: indexPath) as! BuyAndSellCell
        cell.setupCell(item: item)
        return cell
        default:
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LogotypeCell.reuseID, for: indexPath) as! LogotypeCell
        cell.setupCell(item: item)
        return cell
        }
    }
    
}

//extension MainViewController: UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//        
//        let item = CollectionSection.MockData()[indexPath.section]
//        
//        return item
//        
//    }
//}
