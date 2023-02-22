//
//  PodtAdVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class PodtAdVC: UIViewController {

    //IBOUTLET'S
    
    //VARIABLE'S
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    //UBACTION'S

}

extension PodtAdVC {
    
    func setupUI() {
        
    }
    
}
