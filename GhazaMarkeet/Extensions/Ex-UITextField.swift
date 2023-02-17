//
//  Ex-UITextField.swift
//  BrainFit
//
//  Created by Mapple.pk on 04/04/2022.
//

import Foundation
import UIKit

extension UITextField{
   @IBInspectable var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: newValue!])
        }
    }
}

class MyTextField: UITextField {

//    weak var myDelegate: MyTextFieldDelegate?

    override func deleteBackward() {
        super.deleteBackward()
//        myDelegate?.textFieldDidDelete()
    }
}
