//
//  SignUpVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 19/02/2023.
//

import UIKit

class SignUpVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var SignUpBtn: CustomBtnWithoutBG!
    @IBOutlet weak var LoginBtn: CustomBtnWithUnderline!
    
    //VARIABLE'S
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }

    //IBACTION'S
    
    @IBAction func CameraBtnAction(_ sender: UIButton) {
    }
    
    @IBAction func LoginBtnAction(_ sender: CustomBtnWithUnderline) {
        Router.changeRootView(from: self, to: LoginVC())
    }
    
    @IBAction func SignUpBtnAction(_ sender: CustomBtnWithoutBG) {
        
    }
    
}

extension SignUpVC {
    
    func setupUI() {
        SignUpBtn.setTitle(Constant.SignUp, for: .normal)
        self.navigationController?.toolbar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
    }
    
}
