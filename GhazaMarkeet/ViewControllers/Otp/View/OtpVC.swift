//
//  OtpVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 18/02/2023.
//

import UIKit

class OtpVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var FieldOne: UITextField!
    @IBOutlet weak var FieldTwo: UITextField!
    @IBOutlet weak var FieldThree: UITextField!
    @IBOutlet weak var FieldFour: UITextField!
    @IBOutlet weak var SendBtn: CustomBtnWithBG!
    
    //VARIABLE'S
    
    
    //VC LIFR CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    //IBOUTLET'S
    @IBAction func BackBtnAction(_ sender: UIButton) {
        Router.changeRootView(from: self, to: ForgotPasswordVC())
    }
    
    @IBAction func SenBtnAction(_ sender: CustomBtnWithBG) {
        Router.changeRootView(from: self, to: LoginVC())
    }
    
    @IBAction func ResendCodeBtnAction(_ sender: CustomBtnTwoWithUnderline) {
        
    }
}

extension OtpVC {
    
    func setupUI() {
        
    }
    
}
