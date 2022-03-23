//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Prosvetova Lina on 22.03.2022.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
