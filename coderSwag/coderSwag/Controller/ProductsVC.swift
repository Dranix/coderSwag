//
//  ProductsVC.swift
//  coderSwag
//
//  Created by Duong Dang Hoang on 17/1/18.
//  Copyright © 2018 Duong Dang Hoang. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var productsView: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsView.delegate = self
        productsView.dataSource = self
    }

    func initProducts(category:Category){
        self.products = DataService.instance.getProduct(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productsView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = self.products[indexPath.row]
            cell.updateView(product: product)
            
            return cell
        }
        
        return ProductCell()
    }
}
