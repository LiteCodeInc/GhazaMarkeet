//
//  MyAdsViewModel.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import Foundation

class MyAdsPresenter: NSObject {
    
    //VARIABLE'S
    var adsData: [MyAdsModel] = []
    
    override init() {
        
        adsData = [
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: true, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: true, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: true, isShowOption: false),
            MyAdsModel(thumbnail: "AdsPlaceHolder", adTitle: "Samsung", location: "Islamabad", date: "15 Feb", price: 300, isShowOptionBtn: true, isShowOption: false)
        ]
        
    }
    
    func changeStatusOfOptionBtn(row:Int) -> Bool {
        for (index,data) in adsData.enumerated() {
            if index == row {
                data.isShowOption = !data.isShowOption
                return true
            }
        }
        return false
    }
    
}
