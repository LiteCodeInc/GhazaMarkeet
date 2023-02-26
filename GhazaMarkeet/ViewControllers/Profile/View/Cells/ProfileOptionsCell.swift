//
//  ProfileOptionsCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit
import Localize_Swift

class ProfileOptionsCell: UITableViewCell {

    //IBOUTLET'S
    @IBOutlet weak var ItemIcon: UIImageView!
    @IBOutlet weak var ItemTitle: UILabel!
    @IBOutlet weak var ForwordIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        if Localize.currentLanguage() == "ar" {
            ForwordIcon.image = UIImage(named: "lightBack")
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func config(data:ProfileModel) {
        self.ItemIcon.image = UIImage(named: data.itemImage)
        self.ItemTitle.text = data.itemTitle
        self.ItemTitle.textColor = UIColor(named: data.titleColor)
    }
    
}
