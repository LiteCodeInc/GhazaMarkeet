//
//  AdsImagesCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import UIKit

class AdsImagesCell: UICollectionViewCell {

    //IBOUTLET'S
    @IBOutlet weak var AdImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(image:String) {
        self.AdImage.image = UIImage(named: image)
    }

}
