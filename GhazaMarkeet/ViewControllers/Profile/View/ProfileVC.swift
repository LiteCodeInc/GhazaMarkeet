//
//  ProfileVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class ProfileVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var UserProfileImage: UIImageView!
    @IBOutlet weak var UserName: H3!
    @IBOutlet weak var UserPhoneNumber: H1!
    @IBOutlet weak var EditBtn: CustomBtnWithBG!
    @IBOutlet weak var OptionList: UITableView!
    
    //VARIABLE'S
    var presenter = ProfilePresenter()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //IBACTION'S

    @IBAction func EditBtnAction(_ sender: Any) {
        Router.pushVC(from: self, to: EditProfileVC())
    }
}

extension ProfileVC {
    
    func setupUI() {
        
    }
    
}


extension ProfileVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.register(ProfileOptionsCell.self, indexPath: indexPath)
        cell.config(data: presenter.dataList[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
        } else if indexPath.row == 1 {
            Router.pushVC(from: self, to: MyAdsVC())
        }
    }

}
