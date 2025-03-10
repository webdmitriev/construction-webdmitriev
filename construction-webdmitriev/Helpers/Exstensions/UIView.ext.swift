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
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
    }
}
