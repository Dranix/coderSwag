//
//  Category.swift
//  coderSwag
//
//  Created by Duong Dang Hoang on 9/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import Foundation

struct Category{
    private(set) public var title:String
    private(set) public var imageName:String
    
    init(title: String, imageName:String){
        self.title = title
        self.imageName = imageName
    }
}
