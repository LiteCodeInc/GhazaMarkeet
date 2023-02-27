//
//  Ex-UITextView.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 28/02/2023.
//

import Foundation
import UIKit

extension UITextView {
    
    open override var textInputMode: UITextInputMode? {
        let locale = Locale(identifier: "ar") // your preferred locale
        
        return UITextInputMode.activeInputModes.first(where: { $0.primaryLanguage == locale.languageCode }) ?? super.textInputMode
    }
    
}
