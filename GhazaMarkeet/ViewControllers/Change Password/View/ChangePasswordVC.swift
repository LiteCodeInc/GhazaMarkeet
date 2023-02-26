//
//  ChangePasswordVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class ChangePasswordVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var UpdateBtn: CustomBtnWithBG!
    @IBOutlet weak var NewPassword: CustomField!
    @IBOutlet weak var ConfirmPassword: CustomField!
    
    //VARIABLE'S
    var presenter = ChangePasswordPresenter()
    
    //VC LIDE CYCLE'S
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    
    //IBACTION'S
    @IBAction func NewPasswordEyeBtn(_ sender: UIButton) {
        NewPassword.isSecureTextEntry = !presenter.isNewPsswordSecure
        presenter.isNewPsswordSecure = !presenter.isNewPsswordSecure
        
    }
    
    @IBAction func ConfirmPasswordEyeBtn(_ sender: UIButton) {
        ConfirmPassword.isSecureTextEntry = !presenter.isConfirmPsswordSecure
        presenter.isConfirmPsswordSecure = !presenter.isConfirmPsswordSecure
    }
    
    @IBAction func UpdateBtnAction(_ sender: CustomBtnWithBG) {
        Router.changeRootView(from: self, to: LoginVC())
    }
}


extension ChangePasswordVC {
    
    func setupUI() {
        UpdateBtn.setTitle(Constant.update, for: .normal)
    }
    
}
