//
//  CategoryCellTableViewCell.swift
//  SimpleShop
//
//  Created by Omid on 22.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
    
}
