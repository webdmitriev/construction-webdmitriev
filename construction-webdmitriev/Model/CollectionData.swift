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

enum SectionTypes {
    case logotypeSection
    case titleSection
    case buyAndSellSection
}

struct CollectionItems {
    var title: String?
    var date: String?
    var image: String?
    var descr: String?
    var name: String?
    var blockStackOneTitle: String?
    var blockStackOneDescr: String?
    var blockStackTwoTitle: String?
    var blockStackTwoDescr: String?
    var blockStackThreeTitle: String?
    var blockStackThreeDescr: String?
    var collection: [CollectionData]?
}

struct CollectionData {
    var title: String?
    var descr: String?
}

struct CollectionSection {
    let items: [CollectionItems]
    let type: SectionTypes
    
    static func MockData() -> [CollectionSection] {
        
        // MARK: data section -> LOGOTYPE
        let logotypeItems: [CollectionItems] = [
            CollectionItems(image: "logotype-white")
        ]
        let logotypeSection: CollectionSection = CollectionSection(items: logotypeItems, type: .logotypeSection)
        
        // MARK: data section -> TITLE
        let titleItems: [CollectionItems] = [
            CollectionItems(title: "Сервис квартирных решений \nот сделки до отделки")
        ]
        let titleSection: CollectionSection = CollectionSection(items: titleItems, type: .titleSection)
        
        // MARK: data section -> BUY AND SEll
        let buyAndSellItems: [CollectionItems] = [
            CollectionItems(title: "Купить", descr: "Подберем \nподходящий \nобъект"),
            CollectionItems(title: "Продать", descr: "Сами найдем \nпокупателя"),
            CollectionItems(title: "Аренда", descr: "Поможем найти \nарендное жильё \nбыстро"),
        ]
        let buyAndSellSection: CollectionSection = CollectionSection(items: buyAndSellItems, type: .buyAndSellSection)

        // MARK: data section -> TITLE
        let titleForBlocks: [CollectionItems] = [
            CollectionItems(title: "Услуги",
                            blockStackOneTitle: "Страхование",
                            blockStackOneDescr: "Защитите имущество \nздоровье и жизнь",
                            blockStackTwoTitle: "Оценка недвижимости",
                            blockStackTwoDescr: "Узнайте стоимость \nобъекта недвижимости",
                            blockStackThreeTitle: "Дизайн \nинтерьера")
        ]
        let titleForBlocksSection: CollectionSection = CollectionSection(items: titleForBlocks, type: .titleSection)
        
        return [logotypeSection, titleSection, buyAndSellSection, titleForBlocksSection]
    }
}
