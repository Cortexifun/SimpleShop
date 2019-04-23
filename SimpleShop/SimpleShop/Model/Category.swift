//
//  Category.swift
//  SimpleShop
//
//  Created by Omid on 22.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title : String!
    private(set) public var imageName : String!
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
