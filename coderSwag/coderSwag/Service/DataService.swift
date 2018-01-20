//
//  DataService.swift
//  coderSwag
//
//  Created by Duong Dang Hoang on 9/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let category: [Category] = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats: [Product] = [
        Product(title: "Devslopes Logo Graphic Beannie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let shirts: [Product] = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let hoodies: [Product] = [
        Product(title: "Devslopes Black Hoodie", price: "$33", imageName: "hoodie01.png"),
        Product(title: "Devslopes Red Hoodie", price: "$36", imageName: "hoodie02.png"),
        Product(title: "Devslopes White Hoodie", price: "$25", imageName: "hoodie03.png"),
        Product(title: "Devslopes Grey Hoodie", price: "$41", imageName: "hoodie04.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategoriesData() -> [Category]{
            return category
    }
    
    func getProduct(forCategoryTitle title: String) -> [Product]{
        switch title {
        case "SHIRTS":
            return self.shirts
        case "HOODIES":
            return self.hoodies
        case "HATS":
            return self.hats
        case "DIGITAL":
            return self.digitalGoods
        default:
            return self.shirts
        }
    }
}
