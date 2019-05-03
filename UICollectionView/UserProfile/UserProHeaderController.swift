//
//  UserProController.swift
//  UITabBarController
//
//  Created by Apple on 4/29/19.
//  Copyright © 2019 Monkey iDesign. All rights reserved.
//

import UIKit

class UserProHeaderController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        topNavigationBar()
        
        collectionView?.register(UserProHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "headerId")
        
    }
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerId", for: indexPath)
        //header.backgroundColor = UIColor.blue
        
        return header
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 80)
        
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
        
        return cell
    }
    
    fileprivate func topNavigationBar() {
        
        let filter_img = UIImage(named: "filter")!
        let path_img = UIImage(named: "path")!
        
        let filterButton = UIBarButtonItem(image: filter_img,  style: .plain, target: self, action: #selector(didTapEditButton))
        let refreshButton = UIBarButtonItem(image: path_img,  style: .plain, target: self, action: #selector(didTapFavoriteButton))
        
        navigationItem.rightBarButtonItems = [filterButton, refreshButton]
        
        
        let VTopLogo = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 150, height: 44.0))
        let topLogo = UILabel(frame: CGRect(x: 0, y: 0.0, width: 150, height: 44.0))
        topLogo.text = "MONKEY iDESIGN"
        topLogo.lineBreakMode = NSLineBreakMode.byWordWrapping
        VTopLogo.addSubview(topLogo)
        
        let leftButton = UIBarButtonItem(customView: VTopLogo)
        self.navigationItem.leftBarButtonItem = leftButton
        
    }
    @objc func didTapEditButton(sender: UIBarButtonItem) {
        
        print("didTapEditButton")
    }
    @objc func didTapFavoriteButton(sender: UIBarButtonItem) {
        
        print("didTapFavoriteButton")
    }
    
}

