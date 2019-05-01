//
//  UserProHeader.swift
//  UICollectionView
//
//  Created by Apple on 5/1/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//

import UIKit

class UserProHeader: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
