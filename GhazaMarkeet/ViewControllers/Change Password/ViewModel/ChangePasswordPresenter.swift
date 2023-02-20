//
//  ChangePasswordPresenter.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import Foundation

class ChangePasswordPresenter: NSObject {
    
    
    //VARIABLE'S
    var dataModel = ChangePasswordModel()
    
    var isNewPsswordSecure:Bool {
        get {
            return dataModel.isNewPsswordSecure
        }
        set {
            dataModel.isNewPsswordSecure = newValue
        }
    }
    
    var isConfirmPsswordSecure:Bool {
        get {
            return dataModel.isConfirmPsswordSecure
        }
        set {
            dataModel.isConfirmPsswordSecure = newValue
        }
    }
    
    override init() {
    }
    
}
