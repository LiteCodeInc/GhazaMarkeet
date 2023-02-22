//
//  HomeVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class HomeVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var SearchField: UITextField!
    @IBOutlet weak var CategoriesList: UICollectionView!
    @IBOutlet weak var NewProductList: UICollectionView!
    @IBOutlet weak var LocationView: UIView!
    
    
    //VARIABLE'S
    var presenter = HomePresenter()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    //IBACTION'S
    @IBAction func LocationPopupBtn(_ sender: UIButton) {
        LocationView.isHidden = !LocationView.isHidden
    }
    
    @IBAction func ViewAllCategories(_ sender: UIButton) {
    }
    
    
}

extension HomeVC {
    
    func setupUI() {
        
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
