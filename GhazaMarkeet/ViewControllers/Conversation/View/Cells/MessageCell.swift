//
//  MessageCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import UIKit

class MessageCell: UITableViewCell {

    //IBOUTLET'S
    @IBOutlet weak var SenderImage: UIImageView!
    @IBOutlet weak var SendMessageDate: UILabel!
    @IBOutlet weak var SendMessageText: UILabel!
    @IBOutlet weak var SendMessageBackView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        SendMessageBackView.roundCorners(corners: [.bottomRight,.bottomLeft,.topRight], radius: 10)
//        _round(corners: [.bottomRight,.bottomLeft,.topRight], radius: 10)
    }

    override func didMoveToSuperview() {
        SendMessageBackView.roundCorners(corners: [.bottomRight,.bottomLeft,.topRight], radius: 10)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
