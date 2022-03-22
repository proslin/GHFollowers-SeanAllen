//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Prosvetova Lina on 22.03.2022.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view)}
    }
}
