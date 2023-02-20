//
//  ProfilePresenter.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import Foundation

class ProfilePresenter: NSObject {
    
    //VARIABLE'S
    var dataList: [ProfileModel] = []
    
    override init() {
        
        dataList = [
            ProfileModel(itemImage: "Address", itemTitle: "Address", titleColor: "TextBlack"),
            ProfileModel(itemImage: "MyAds", itemTitle: "My Ads", titleColor: "TextBlack"),
            ProfileModel(itemImage: "Privacy", itemTitle: "Privacy Policy", titleColor: "TextBlack"),
            ProfileModel(itemImage: "Logout", itemTitle: "Logout", titleColor: "Logout"),
        ]
        
    }
}
