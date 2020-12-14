//
//  MyCollectionViewCell.swift
//  Collection View Composite Layout
//
//  Created by Adwait Barkale on 14/12/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MyCollectionViewCell"
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
        let images:[UIImage] =
        [
        UIImage(named: "aa"),
        UIImage(named: "bb"),
        UIImage(named: "cc"),
        UIImage(named: "dd"),
        UIImage(named: "ee"),
        UIImage(named: "ff"),
        UIImage(named: "gg")
        ].compactMap({ $0 }) //Compact Map for checking image is not null
            
        imageView.image = images.randomElement()
        contentView.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
}
