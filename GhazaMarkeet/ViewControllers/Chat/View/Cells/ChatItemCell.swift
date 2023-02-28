//
//  ChatItemCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import UIKit

class ChatItemCell: UITableViewCell {

    //IBOUTLET'S
    @IBOutlet weak var UserImage: UIImageView!
    @IBOutlet weak var UserName: UILabel!
    @IBOutlet weak var LastMessage: H4Light!
    @IBOutlet weak var MessageDate: UILabel!
    
    //VARIBALE'S
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(data:ChatModel) {
        self.UserName.text = data.userName
        self.UserImage.image = UIImage(named: data.userImage)
        self.MessageDate.text = data.chatDate
        self.LastMessage.text = data.lastMessage
    }
    
}
