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
}

let theam = UIColor.appColor(.Theam)
let theamTwo = UIColor.appColor(.Theam2)
let textBlack = UIColor.appColor(.TextBlack)
let subHeading = UIColor.appColor(.SubHeading)
let subHeadingTwo = UIColor.appColor(.SubHeading2)
let textFieldBorder = UIColor.appColor(.TextFieldBorder)
let textFieldPlaceholder = UIColor.appColor(.TextFieldPlaceholder)


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
    }
}

// MARK: ---------------- LABEL'S ----------------
class H1: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 24)
        textColor = textBlack
    }
}

class H2: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.interRegular, size: 16)
        textColor = subHeading
    }
}

class H3: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoRegular, size: 14)
        textColor = subHeadingTwo
    }
}

class H4: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 14)
        textColor = .white
    }
}

class H5: UILabel {
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        font = UIFont(name: Constant.robotoBold, size: 12)
        textColor = .white
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
            string: self.text ?? "",
            attributes: yourAttributes
        )
        self.attributedText = attributeString
    }
}

//
//class NumberPad: UILabel {
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        font = UIFont(name: Constant.FontName, size: 28)
//        textColor = .white
//    }
//}
//
//
//// MARK: ---------------- BUTTON'S ----------------
//class ERideButton: UIButton {
//    override var isEnabled: Bool {
//        didSet{
//            if isEnabled {
//                backgroundColor = lightGreen
//                titleLabel?.textColor = black
//            } else {
//                backgroundColor = lightBlack
//                titleLabel?.textColor = lightGray
//            }
//            layer.cornerRadius = 8
//        }
//    }
//}
//
//class ERideTextButton: UIButton {
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        tintColor = lightGreen
//        let yourAttributes: [NSAttributedString.Key: Any] = [
//            .font: UIFont.systemFont(ofSize: 14),
//            .foregroundColor: lightGreen,
//            .underlineStyle: NSUnderlineStyle.single.rawValue
//        ]
//        let attributeString = NSMutableAttributedString(
//            string: self.titleLabel!.text ?? "",
//            attributes: yourAttributes
//        )
//        setAttributedTitle(attributeString, for: .normal)
//    }
//}
//
//class ERideButtonWithoutUnderline: UIButton {
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        tintColor = lightGreen
//        backgroundColor = .clear
//    }
//}

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
            string: self.titleLabel!.text ?? "",
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
            string: self.titleLabel!.text ?? "",
            attributes: yourAttributes
        )
        setAttributedTitle(attributeString, for: .normal)
    }
}
