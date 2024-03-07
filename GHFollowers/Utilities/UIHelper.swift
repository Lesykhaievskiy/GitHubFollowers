//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Олексій Гаєвський on 05.03.2024.
//

import UIKit

struct UIHelper {
    
   static func createThreeColumnFlowLayot(in view: UIView) -> UICollectionViewFlowLayout{
        let width = view.bounds.width
        let padding: CGFloat = 12
        let minimumItemSpacing: CGFloat = 10
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLaout = UICollectionViewFlowLayout()
        flowLaout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLaout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        
        return flowLaout
    }
}
