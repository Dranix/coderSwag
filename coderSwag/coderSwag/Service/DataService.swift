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
    
    let category: [Category] = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategoriesData() -> [Category]{
            return category
    }
}
