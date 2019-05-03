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
        iv.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.8)
        
        iv.image = UIImage(named: "profile_selected")
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 10
        //iv.layer.cornerRadius = 60 / 2
    
        return iv
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = UIColor.rgb(red: 68, green: 142, blue: 246)
        
        addSubview(profileImageView)
        profileImageView.anchor(top: topAnchor, left: self.leftAnchor, bottom: nil, right: nil, paddingTop: 12, paddingLeft: 12, paddingBottom: 0, paddingRight: 12, width: 60, height: 60)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
