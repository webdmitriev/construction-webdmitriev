//
//  CollectionData.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 06.03.2025.
//

import Foundation

protocol CellProtocol: AnyObject {
    static var reuseID: String { get }
    func setupCell()
    func setupConstraint()
}

enum HeaderTypes {
    case logotypeSection
}

struct CollectionItems {
    var title: String?
    var date: String?
    let image: String?
    let descr: String?
    var name: String?
}

struct CollectionSection {
    let items: [CollectionItems]
    let type: HeaderTypes
    
    static func MockData() -> [CollectionSection] {
        
        let logotypeItems: [CollectionItems] = [
            CollectionItems(image: "logotype-white", descr: "")
        ]
        let logotypeSection: CollectionSection = CollectionSection(items: logotypeItems, type: .logotypeSection)

        
        return [logotypeSection]
    }
}
