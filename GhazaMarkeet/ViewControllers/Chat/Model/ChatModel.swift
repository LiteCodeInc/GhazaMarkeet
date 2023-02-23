//
//  ChatModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import Foundation

class ChatModel: Codable {
    
    var userImage:String
    var userName:String
    var lastMessage:String
    var chatDate:String
    
    
    init(userImage: String, userName: String, lastMessage: String, chatDate: String) {
        self.userImage = userImage
        self.userName = userName
        self.lastMessage = lastMessage
        self.chatDate = chatDate
    }
    
}
