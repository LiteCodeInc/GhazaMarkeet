//
//  CategoryCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import UIKit

class CategoryCell: UICollectionViewCell {

    @IBOutlet weak var CategoryIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(data:CetegoryModel) {
        self.CategoryIcon.image = UIImage(named: data.icon)
    }

}
