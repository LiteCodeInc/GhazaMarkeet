//
//  ChatViewModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 24/02/2023.
//

import Foundation

class ChatPresenter: NSObject {
    
    //VARIABLE'S
    var data: [ChatModel] = []
    
    override init() {
        data = [
            ChatModel(userImage: "ProfilePlaceholder", userName: "Kyle Butler".localized(), lastMessage: "Space along marriage doctor theory four.".localized(), chatDate: "15 Jan"),
            ChatModel(userImage: "ProfilePlaceholder", userName: "Kyle Butler".localized(), lastMessage: "Space along marriage doctor theory four.".localized(), chatDate: "15 Jan"),
            ChatModel(userImage: "ProfilePlaceholder", userName: "Kyle Butler".localized(), lastMessage: "Space along marriage doctor theory four.".localized(), chatDate: "15 Jan"),
            ChatModel(userImage: "ProfilePlaceholder", userName: "Kyle Butler".localized(), lastMessage: "Space along marriage doctor theory four.".localized(), chatDate: "15 Jan"),
            ChatModel(userImage: "ProfilePlaceholder", userName: "Kyle Butler".localized(), lastMessage: "Space along marriage doctor theory four.".localized(), chatDate: "15 Jan")
        
        ]
    }
    
}
