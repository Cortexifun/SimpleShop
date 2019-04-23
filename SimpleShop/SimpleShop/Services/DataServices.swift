//
//  DataServices.swift
//  SimpleShop
//
//  Created by Omid on 22.04.19.
//  Copyright © 2019 Omid. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [
        Product(title: "This is hat title 1", price: "$140", imageName: "hat01.png"),
        Product(title: "This is hat title 2", price: "$100", imageName: "hat02.png"),
        Product(title: "This is hat title 3", price: "$99", imageName: "hat03.png"),
        Product(title: "This is hat title 4", price: "$45", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "this is hoody title 1", price: "$250", imageName: "hoodie01.png"),
        Product(title: "This is hoody title 2", price: "$100", imageName: "hoodie02.png"),
        Product(title: "this is hoody title 3", price: "$245", imageName: "hoodie03.png"),
        Product(title: "This is hoody title 4", price: "$150", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "This is shirt title 1", price: "$120", imageName: "shirt01.png"),
        Product(title: "This is shirt title 2", price: "$99", imageName: "shirt02.png"),
        Product(title: "This is shirt title 3", price: "$56", imageName: "shirt03.png"),
        Product(title: "This is shirt title 4", price: "$80", imageName: "shirt04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "HATS":
            return getHats()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return  getShirts()
        }
    }
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
