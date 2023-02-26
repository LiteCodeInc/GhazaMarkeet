//
//  HomeVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit
import Localize_Swift

class HomeVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var SearchField: CustomField!
    @IBOutlet weak var CategoriesList: UICollectionView!
    @IBOutlet weak var NewProductList: UICollectionView!
    @IBOutlet weak var LocationView: UIView!
    @IBOutlet weak var SaveBtn: UIButton!
    @IBOutlet weak var CancelBtn: UIButton!
    @IBOutlet weak var ViewAllBtn: UIButton!
    @IBOutlet weak var ForwordArrow: UIImageView!
    
    
    //VARIABLE'S
    var presenter = HomePresenter()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.toolbar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
        self.tabBarController?.tabBar.isHidden = false
    }
    
    //IBACTION'S
    @IBAction func LocationPopupBtn(_ sender: UIButton) {
        LocationView.isHidden = !LocationView.isHidden
    }
    
    @IBAction func ViewAllCategories(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
    
}

extension HomeVC {
    
    func setupUI() {
        if Localize.currentLanguage() == "ar" {
            ForwordArrow.image = UIImage(named: "ForwordArrow 1")
        }
        SaveBtn.setTitle(Constant.save, for: .normal)
        CancelBtn.setTitle(Constant.cancel, for: .normal)
        ViewAllBtn.setTitle(Constant.viewAll, for: .normal)
        self.navigationController?.toolbar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
    }
    
}


extension HomeVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, AdsCellResponder {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return presenter.dataModel.categories.count
        } else {
            return presenter.dataModel.adsData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 0 {
            let cell = collectionView.register(CategoryCell.self, indexPath: indexPath)
            cell.config(data: presenter.dataModel.categories[indexPath.row])
            return cell
        } else {
            let cell = collectionView.register(AdsCell.self, indexPath: indexPath)
            cell.config(data: presenter.dataModel.adsData[indexPath.row], indexPath: indexPath, delegate: self)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 0 {
            // Move to subtype vc...
            Router.pushVC(from: self, to: SubCategoriesVC())
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView.tag == 0 {
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            _ = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
            return CGSize(width:76, height:99)
        } else {
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
            return CGSize(width:widthPerItem, height:200)
        }
    }
    
    func AdsResponder(respondType: AdCellRespondType, indexPath: IndexPath) {
        switch respondType {
        case .adOptions:
            break
        case .editAd:
            break
        case .showAd:
            break
        case .deleteAd:
            break
        }
    }    
    
}
