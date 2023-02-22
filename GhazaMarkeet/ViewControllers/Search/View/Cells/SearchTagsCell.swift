//
//  SearchTagsCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import UIKit

class SearchTagsCell: UICollectionViewCell {

    //IBOUTLET'S
    @IBOutlet weak var SearchTagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(data:SearchTags) {
        self.SearchTagLabel.text = data.searchType
    }

}
