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
        
//        let item = CollectionSection.MockData()[indexPath.section].items[indexPath.item]
        
        switch indexPath.section {
            case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LogotypeCell.reuseID, for: indexPath) as! LogotypeCell
            cell.setupCell()
            return cell
            default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LogotypeCell.reuseID, for: indexPath) as! LogotypeCell
            cell.setupCell()
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
