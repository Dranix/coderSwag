//
//  ProductCell.swift
//  coderSwag
//
//  Created by Duong Dang Hoang on 17/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    
    func updateView(product: Product){
        image.image = UIImage(named: product.imageName)
        title.text = product.title
        price.text = product.price
    }
}
