//
//  Ex-UITextField.swift
//  BrainFit
//
//  Created by Mapple.pk on 04/04/2022.
//

import Foundation
import UIKit
import Localize_Swift

extension UITextField{
    @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
    
    open override func awakeFromNib() {
        super.awakeFromNib()
        if Localize.currentLanguage() == "ar" {
            if textAlignment == .natural {
                self.textAlignment = .right
            }
        }
    }
    
    open override var textInputMode: UITextInputMode? {
        let locale = Locale(identifier: "ar") // your preferred locale
        
        return UITextInputMode.activeInputModes.first(where: { $0.primaryLanguage == locale.languageCode }) ?? super.textInputMode
    }
}

class MyTextField: UITextField {
    
    //    weak var myDelegate: MyTextFieldDelegate?
    
    override func deleteBackward() {
        super.deleteBackward()
        //        myDelegate?.textFieldDidDelete()
    }
    
}
