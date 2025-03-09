//
//  UIView.ext.swift
//  construction-webdmitriev
//
//  Created by Олег Дмитриев on 09.03.2025.
//

import UIKit

extension UIView {
    func addSubViews(_ views: UIView ...) {
        views.forEach { addSubview($0) }
    }
}
