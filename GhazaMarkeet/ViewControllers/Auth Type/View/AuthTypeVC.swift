//
//  AuthTypeVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class AuthTypeVC: UIViewController {
    
    //IBOUTLET'S
    
    @IBOutlet weak var TitleLabel: H1Bold!
    @IBOutlet weak var DescriptionLabel: H2Medium!
    @IBOutlet weak var LoginBtn: CustomBtnWithBG!
    @IBOutlet weak var SignUpBtn: CustomBtnWithoutBG!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
        
        
    }

    // IBACTION'S
    @IBAction func LoginBtnAction(_ sender: CustomBtnWithBG) {
        Router.changeRootView(from: self, to: LoginVC())
    }
    
    @IBAction func SignupBtnAction(_ sender: CustomBtnWithoutBG) {
        Router.changeRootView(from: self, to: SignUpVC())
    }
    
}

extension AuthTypeVC {
    
    func setupUI() {
        LoginBtn.setTitle(Constant.Login, for: .normal)
        SignUpBtn.setTitle(Constant.SignUp, for: .normal)
    }
    
}
