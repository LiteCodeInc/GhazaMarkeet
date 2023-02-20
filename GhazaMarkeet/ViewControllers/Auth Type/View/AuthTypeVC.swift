//
//  AuthTypeVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class AuthTypeVC: UIViewController {
    
    //IBOUTLET'S
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
