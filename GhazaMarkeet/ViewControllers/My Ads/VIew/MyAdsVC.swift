//
//  MyAdsVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import UIKit
import Localize_Swift

class MyAdsVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var MyAdsList: UICollectionView!
    @IBOutlet weak var BackBtn: UIButton!
    
    //VARIABLE'S
    var presenter = MyAdsPresenter()
    
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
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}


extension MyAdsVC {
    
    func setupUI() {
        if Localize.currentLanguage() == "ar" {
            BackBtn.setImage(UIImage(named: "ForwordBack"), for: .normal)
        }
    }
    
}


extension MyAdsVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, AdsCellResponder {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.adsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.register(AdsCell.self, indexPath: indexPath)
        cell.config(data: presenter.adsData[indexPath.row], indexPath: indexPath, delegate: self)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lay = collectionViewLayout as! UICollectionViewFlowLayout
        let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
        return CGSize(width:widthPerItem, height:200)
    }
    
    func AdsResponder(respondType: AdCellRespondType, indexPath:IndexPath) {
        switch respondType {
        case .adOptions:
            if presenter.changeStatusOfOptionBtn(row: indexPath.row) {
                self.MyAdsList.reloadItems(at: [indexPath])
            }
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
