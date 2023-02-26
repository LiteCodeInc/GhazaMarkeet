//
//  ForgotPasswordVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class ForgotPasswordVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var EmailField: CustomField!
    @IBOutlet weak var SendBtn: CustomBtnWithBG!
    
    //VARIABLE'S
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //IBACTION'S
    @IBAction func BacBtnAction(_ sender: UIButton) {
        Router.changeRootView(from: self, to: LoginVC())
    }
    
    @IBAction func SendBtnAction(_ sender: CustomBtnWithBG) {
        Router.changeRootView(from: self, to: OtpVC())
    }
    
}


extension ForgotPasswordVC {
    
    func setupUI() {
        SendBtn.setTitle(Constant.send, for: .normal)
    }
    
}
