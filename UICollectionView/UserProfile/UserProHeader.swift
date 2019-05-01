//
//  UserProHeader.swift
//  UICollectionView
//
//  Created by Apple on 5/1/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//

import UIKit

class UserProHeader: UICollectionViewCell {
    
    //adding user profile image view
    let profileImageView: UIImageView = {
        
        let iv = UIImageView()
        iv.backgroundColor = .red
        return iv
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .green
        
        addSubview(profileImageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
