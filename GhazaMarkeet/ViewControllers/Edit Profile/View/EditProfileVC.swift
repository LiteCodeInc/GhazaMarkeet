//
//  EditProfileVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import UIKit
import Localize_Swift

class EditProfileVC: UIViewController {
    
    //IBOUTLET'S
    
    @IBOutlet weak var NameField: CustomField!
    @IBOutlet weak var UserProfileImage: UIImageView!
    @IBOutlet weak var EmailField: CustomField!
    @IBOutlet weak var PhoneNumberField: CustomField!
    @IBOutlet weak var PasswordField: CustomField!
    @IBOutlet weak var ConfirmPasswordField: CustomField!
    @IBOutlet weak var UpdateBtn: CustomBtnWithBG!
    @IBOutlet weak var BackBtn: UIButton!
    
    //VARIABLE'S
    
    
    //VC LIDE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //IBACTION'S
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func CameraIconBtnAction(_ sender: UIButton) {
    }
    
    @IBAction func PasswordSecureEntryField(_ sender: UIButton) {
        PasswordField.isSecureTextEntry = !PasswordField.isSecureTextEntry
    }
    
    @IBAction func CPSecureEntryFieldAction(_ sender: UIButton) {
        ConfirmPasswordField.isSecureTextEntry = !ConfirmPasswordField.isSecureTextEntry
    }
    
    @IBAction func UpdateBtnAction(_ sender: CustomBtnWithBG) {
        self.navigationController?.popViewController(animated: true)
    }
    
}


extension EditProfileVC {
    
    func setupUI()  {
        if Localize.currentLanguage() == "ar" {
            BackBtn.setImage(UIImage(named: "ForwordBack"), for: .normal)
        }
        UpdateBtn.setTitle(Constant.update, for: .normal)
    }
    
}
