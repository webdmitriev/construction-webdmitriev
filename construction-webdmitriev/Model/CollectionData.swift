//
//  CollectionData.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 06.03.2025.
//

import Foundation
import UIKit

protocol CellProtocol: AnyObject {
    static var reuseID: String { get }
    func setupCell()
    func setupConstraint()
}

enum SectionTypes {
    case logotypeSection
    case titleSection
    case buyAndSellSection
    case titleForBlocksSection
    case productsDataSection
}

struct CollectionItems {
    var title: String?
    var date: String?
    var image: String?
    var descr: String?
    var name: String?
    var paddingBottom: CGFloat?
    var color: UIColor?
    var bgc: UIColor?
    var blockStackOneTitle: String?
    var blockStackOneDescr: String?
    var blockStackTwoTitle: String?
    var blockStackTwoDescr: String?
    var blockStackThreeTitle: String?
    var blockStackThreeDescr: String?
    var collection: [CollectionData]?
    var products: [ProductsData]?
}

struct CollectionData {
    var title: String?
    var descr: String?
}

struct ProductsData {
    let id: String = UUID().uuidString
    var title: String?
    var descr: String?
    var price: Double?
    var address: String?
    var thumbnail: String?
    var gallery: [String]?
    var params: [ProductsDataParams]?
}

struct ProductsDataParams {
    var label: String?
    var value: String?
}


struct CollectionSection {
    let items: [CollectionItems]
    let type: SectionTypes
    var products: [ProductsData]?
    
    static func MockData() -> [CollectionSection] {
        
        // MARK: data section -> LOGOTYPE
        let logotypeItems: [CollectionItems] = [
            CollectionItems(image: "logotype-white")
        ]
        let logotypeSection: CollectionSection = CollectionSection(items: logotypeItems, type: .logotypeSection)
        
        // MARK: data section -> TITLE
        let titleItems: [CollectionItems] = [
            CollectionItems(title: "Сервис квартирных решений \nот сделки до отделки", paddingBottom: 20, color: UIColor.appWhite, bgc: UIColor.appBg)
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
        let titleForBlocksSection: CollectionSection = CollectionSection(items: titleForBlocks, type: .titleForBlocksSection)
        
        // MARK: data section -> TITLE
        let productsTitle: [CollectionItems] = [
            CollectionItems(title: "Жилые комплексы", paddingBottom: 14, color: UIColor.appBlack, bgc: UIColor.appWhite)
        ]
        let productsTitleSection: CollectionSection = CollectionSection(items: productsTitle, type: .titleSection)
        
        // MARK: data section -> PRODUCTS HORIZONTAL
        let productsItems: [CollectionItems] = [
            CollectionItems(
                title: "Жилые комплексы",
                products: [
                    ProductsData(title: "Ольховый Квартал", descr: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", price: 8029445, address: "Москва, поселение Сосенское, деревня Столбово", thumbnail: "thumbnail-01", gallery: ["gallery-01", "gallery-02", "gallery-03", "gallery-04"], params: [
                        ProductsDataParams(label: "Площадь", value: "120 м²"),
                        ProductsDataParams(label: "Этаж", value: "1"),
                        ProductsDataParams(label: "Комнат", value: "4")
                        ]
                    ),
                    ProductsData(title: "Новое Видное", descr: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", price: 4735485, address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область", thumbnail: "thumbnail-02", gallery: ["gallery-02", "gallery-03", "gallery-04", "gallery-01"], params: [
                        ProductsDataParams(label: "Площадь", value: "90 м²"),
                        ProductsDataParams(label: "Этаж", value: "4"),
                        ProductsDataParams(label: "Комнат", value: "2")
                        ]
                    ),
                    ProductsData(title: "Светлое Озеро", descr: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", price: 3354728, address: "Светло озёрское, Озёрский округ, Озёрская область", thumbnail: "thumbnail-02", gallery: ["gallery-04", "gallery-01", "gallery-03", "gallery-02"], params: [
                        ProductsDataParams(label: "Площадь", value: "110 м²"),
                        ProductsDataParams(label: "Этаж", value: "1"),
                        ProductsDataParams(label: "Комнат", value: "3")
                        ]
                    )
                ]
            ),
        ]
        let productsHorizontalSection = CollectionSection(items: productsItems, type: .productsDataSection)
        
        return [logotypeSection, titleSection, buyAndSellSection, titleForBlocksSection, productsTitleSection, productsHorizontalSection]
    }
    
    
}
