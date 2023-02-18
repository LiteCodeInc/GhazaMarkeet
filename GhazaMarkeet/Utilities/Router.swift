//
//  Router.swift
//  AnimeApp
//
//  Created by Mapple.pk on 23/01/2023.
//

import Foundation
import UIKit

class Router {
    // LANGUANGE
    class func changeRootView(from:UIViewController, to:UIViewController) {
        from.changeRootViewController(controller: to)
    }
    
    // LOGIN
    class func moveToForgotVC(view:UIViewController) {
        let forgotPasswordVC = ForgotPasswordVC()
        view.navigationController?.pushViewController(forgotPasswordVC, animated: true)
    }
//    
//    // SIGNUP
//    class func moveToSignupVC(view:UIViewController) {
//        let signUpVC = SignupVC()
//        signUpVC.navigationController?.navigationBar.isHidden = true
//        view.navigationController?.pushViewController(signUpVC, animated: true)
//    }
//    
//    // SIGNIN
//    class func moveToSigninVC(view:UIViewController) {
//        
//    }
//    
//    // FORGOT PASSWORD
//    class func moveToForgotPasswordVC(isOtpScreen:Bool,view:UIViewController) {
//        let forgotPasswordVC = ForgotPasswordVCViewController()
//        forgotPasswordVC.title = Constant.forgotPasswordTitle
//        forgotPasswordVC.navigationController?.navigationBar.isHidden = false
//        // Presenter
//        let forgotPresenter = ForgotPresenter(view: forgotPasswordVC)
//        forgotPresenter.isForgotPassword = !isOtpScreen
//        forgotPresenter.isEmailComplete = isOtpScreen
//        forgotPasswordVC.presenter = forgotPresenter
//        view.navigationController?.pushViewController(forgotPasswordVC, animated: true)
//    }
//    
//    class func moveToChangePasswordVC(view:UIViewController) {
//        let changePasswordVC = ChangePasswordVC()
//        changePasswordVC.title = Constant.newPasswordTitle
//        changePasswordVC.navigationController?.navigationBar.isHidden = false
//        // Presenter
//        view.navigationController?.pushViewController(changePasswordVC, animated: true)
//    }
//    
//    // PERSONAL DETAIL
//    class func moveToPersonalDetailVC(view:UIViewController) {
//        let personalDetailVC = PersonalDetailVC()
//        //Model
//        let personalDetailModel = PersonalDetailModel()
//        personalDetailModel.isJordanianSected = false
//        personalDetailModel.isUserTypeSelected = false
//        // Presenter
//        let personalDetailPresenter = PersonalDetailPresenter()
//        personalDetailPresenter.dataModel = personalDetailModel
//        personalDetailVC.presenter = personalDetailPresenter
//        
//        personalDetailVC.navigationController?.navigationBar.isHidden = true
//        view.navigationController?.pushViewController(personalDetailVC, animated: true)
//    }
//    
//    class func moveToUploadFileVC(view:UIViewController) {
//        let personalDetailVC = UploadIdVC()
//        personalDetailVC.navigationController?.navigationBar.isHidden = false
//        view.navigationController?.pushViewController(personalDetailVC, animated: true)
//        
//    }
//    
//    class func moveToSubscriptionVC(view: UIViewController) {
//        let subscriptionVC = SubscriptionPlansVC()
//        subscriptionVC.title = "Subscription Plans"
//        subscriptionVC.navigationController?.navigationBar.isHidden = false
//        view.navigationController?.pushViewController(subscriptionVC, animated: true)
//    }
//    
//    class func showCustomPopup(title:String, detail:String, popupDelegate: PopupResponder, popupType:PopupType, view:UIViewController) {
//        let popupVC = PopupVC()
//        let presenter = PopupViewModel()
//        presenter.titleText = title
//        presenter.detailText = detail
//        presenter.delegate =  popupDelegate
//        presenter.popupType = popupType
//        popupVC.presenter = presenter
//        popupVC.modalPresentationStyle = .overCurrentContext
//        
//        view.present(popupVC, animated: true)
//    }
//    
//    class func moveToPromoVC(view:UIViewController) {
//        let promoVC = PromoVC()
//        promoVC.title = "Enter your promo"
//        view.navigationController?.pushViewController(promoVC, animated: true)
//    }
//    
//    class func moveToAddCreditVC(view:UIViewController) {
//        let addCreditVC = AddCreditVC()
//        addCreditVC.title = "Add credit"
//        view.navigationController?.pushViewController(addCreditVC, animated: true)
//    }
//    
//    class func moveToPaymentMethodsVC(view:UIViewController) {
//        let paymentMethodsVC = PaymentMethodsVC()
//        paymentMethodsVC.title = "Select a Payment Method"
//        paymentMethodsVC.navigationController?.navigationBar.isHidden = false
//        view.navigationController?.pushViewController(paymentMethodsVC, animated: true)
//    }
//    
//    class func moveToAddNewCardVC(view:UIViewController) {
//        let addNewCard = AddNewCard()
//        addNewCard.title = "Add a Card"
//        addNewCard.navigationController?.navigationBar.isHidden = false
//        view.navigationController?.pushViewController(addNewCard, animated: true)
//    }
//    
//    class func moveToMyWalletVC(view:UIViewController) {
//        let myWalletVC = MyWalletVC()
//        myWalletVC.title = "My Wallet"
//        myWalletVC.navigationController?.navigationBar.isHidden = false
//        view.navigationController?.pushViewController(myWalletVC, animated: true)
//    }
}
