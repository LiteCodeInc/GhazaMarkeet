//
//  SubCategoriesVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import UIKit
import Localize_Swift

class SubCategoriesVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var SubTypesList: UICollectionView!
    @IBOutlet weak var BackBtn: UIButton!
    
    //VARIBALE'S
    var presenter = SubCategoriesPresenter()
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    //IBACTION'S
    
}


extension SubCategoriesVC {
    
    func setupUI() {
        if Localize.currentLanguage() == "ar" {
            BackBtn.setImage(UIImage(named: "ForwordBack"), for: .normal)
        }
    }
    
}


extension SubCategoriesVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.register(CategoryCell.self, indexPath: indexPath)
        cell.config(data: presenter.categories[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Router.pushVC(from: self, to: SearchVC())
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        var size = collectionView.frame.width / 3 - lay.minimumInteritemSpacing
        return CGSize(width: size, height:99)
        
    }
    
}

