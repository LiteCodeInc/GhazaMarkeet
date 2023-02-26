//
//  LoginVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class LoginVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var EmailField: CustomField!
    @IBOutlet weak var PasswordField: CustomField!
    @IBOutlet weak var ForgotBtn: CustomBtnWithUnderline!
    @IBOutlet weak var LoginBtn: CustomBtnWithBG!
    @IBOutlet weak var SignUpBtn: CustomBtnWithoutBG!
    
    //VARIABLE'S
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //IBACTION'S
    @IBAction func ForgotPasswordBtnAction(_ sender: CustomBtnWithUnderline) {
        Router.changeRootView(from: self, to: ForgotPasswordVC())
    }
    
    @IBAction func LoginBtnAction(_ sender: CustomBtnWithBG) {
        Router.changeRootView(from: self, to: GhazaTabbar())
    }
    
    @IBAction func SignUpBtnAction(_ sender: CustomBtnWithoutBG) {
        Router.changeRootView(from: self, to: SignUpVC())
    }
}

//MARK: ------------ HELPING METHOD'S ------------ 
extension LoginVC {
    
    func setupUI () {
        LoginBtn.setTitle(Constant.Login, for: .normal)
        SignUpBtn.setTitle(Constant.SignUp, for: .normal)
    }
    
}
