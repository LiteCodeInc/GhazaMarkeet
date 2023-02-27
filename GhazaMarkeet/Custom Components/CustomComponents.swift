//
//  CustomComponents.swift
//  ERide
//
//  Created by Mapple.pk on 09/02/2023.
//

import Foundation
import UIKit

enum AssetsColor: String {
    case Theam
    case Theam2
    case TextBlack
    case TextFieldBorder
    case TextFieldPlaceholder
    case SubHeading
    case SubHeading2
    case Date
    case Logout
    case MessageBorder
    case MessageText
    case MessageTypeBar
    case Online
    case Price
    case PriceBackgroud
    case Shodow
    case Tabbar
    case TabbarUnselected
}

let theam = UIColor.appColor(.Theam)
let theamTwo = UIColor.appColor(.Theam2)
let textBlack = UIColor.appColor(.TextBlack)
let subHeading = UIColor.appColor(.SubHeading)
let subHeadingTwo = UIColor.appColor(.SubHeading2)
let textFieldBorder = UIColor.appColor(.TextFieldBorder)
let textFieldPlaceholder = UIColor.appColor(.TextFieldPlaceholder)
let date = UIColor.appColor(.Date)
let logout = UIColor.appColor(.Logout)
let messageBorder = UIColor.appColor(.MessageBorder)
let messageText = UIColor.appColor(.MessageText)
let messageTypeBar = UIColor.appColor(.MessageTypeBar)
let online = UIColor.appColor(.Online)
let price = UIColor.appColor(.Price)
let priceBackgroud = UIColor.appColor(.PriceBackgroud)
let shodow = UIColor.appColor(.Shodow)
let tabbar = UIColor.appColor(.Tabbar)
let tabbarUnselected = UIColor.appColor(.TabbarUnselected)









//// MARK: ---------------- UIVIEW'S ----------------
//class ERideView: UIView {
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        backgroundColor = lightBlack
//        layer.cornerRadius = 8
//    }
//}
//

// MARK: ---------------- TEXTFIELD'S ----------------
class CustomField: UITextField {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .clear
        textColor = textBlack
        placeholder = placeholder?.localized()
    }
}

// MARK: ---------------- LABEL'S ----------------
class H1Bold: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 24)
        textColor = textBlack
        self.text = text?.localized()
    }
}

class H1Medium: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 24)
        textColor = textBlack
        self.text = text?.localized()
    }
}

class H1Light: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 24)
        textColor = textBlack
        self.text = text?.localized()
    }
}



class H2Bold: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 20)
        textColor = textBlack
        self.text = text?.localized()
    }
}

class H2Medium: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.interRegular, size: 16)
        textColor = subHeading
        self.text = text?.localized()
    }
}

class H2Light: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.interRegular, size: 16)
        textColor = subHeading
        self.text = text?.localized()
    }
}



class H3Bold: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoRegular, size: 14)
        textColor = subHeadingTwo
        self.text = text?.localized()
    }
}

class H3Medium: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoRegular, size: 14)
        textColor = subHeadingTwo
        self.text = text?.localized()
    }
}

class H3Light: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoRegular, size: 14)
        textColor = subHeadingTwo
        self.text = text?.localized()
    }
}



class H4Bold: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 14)
        textColor = textBlack
        self.text = text?.localized()
    }
}

class H4Medium: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoMedium, size: 14)
        textColor = subHeadingTwo
        self.text = text?.localized()
    }
}

class H4Light: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 14)
        textColor = .white
        self.text = text?.localized()
    }
}



class H5Bold: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 12)
        textColor = .white
        self.text = text?.localized()
    }
}

class H5Medium: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 12)
        textColor = .white
        self.text = text?.localized()
    }
}

class H5Light: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 12)
        textColor = .white
        self.text = text?.localized()
    }
}



class UnderLineLabel: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        let yourAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: Constant.robotoMedium, size: 14),
            .foregroundColor: theam,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let attributeString = NSMutableAttributedString(
            string: self.text?.localized() ?? "",
            attributes: yourAttributes
        )
        self.attributedText = attributeString
    }
}


class CustomBtnWithBG: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tintColor = theamTwo
        backgroundColor = theam
        cornerRadius = 10
        titleLabel?.font =  UIFont(name: Constant.robotoBold, size: 15)
        
    }
}

class CustomBtnWithoutBG: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tintColor = theam
        backgroundColor = .clear
        borderColor = theam
        borderWidth = 1
        cornerRadius = 10
        titleLabel?.font =  UIFont(name: Constant.robotoBold, size: 15)
    }
}

class CustomBtnWithUnderline: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tintColor = theam
        let yourAttributes: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: Constant.robotoMedium, size: 14),
            .foregroundColor: theam,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let attributeString = NSMutableAttributedString(
            string: self.titleLabel!.text?.localized() ?? "".localized(),
            attributes: yourAttributes
        )
        setAttributedTitle(attributeString, for: .normal)
    }
}

class CustomBtnTwoWithUnderline: UIButton {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        tintColor = subHeadingTwo
        let yourAttributes: [NSAttributedString.Key: Any] = [
            .font:  UIFont(name: Constant.robotoMedium, size: 14),
            .foregroundColor: subHeadingTwo,
            .underlineStyle: NSUnderlineStyle.single.rawValue
        ]
        let attributeString = NSMutableAttributedString(
            string: self.titleLabel!.text?.localized() ?? "".localized(),
            attributes: yourAttributes
        )
        setAttributedTitle(attributeString, for: .normal)
    }
}
