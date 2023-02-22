//
//  SearchVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import UIKit

class SearchVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var SearchTagList: UICollectionView!
    @IBOutlet weak var AdsList: UICollectionView!
    @IBOutlet weak var SearchMainView: UIView!
    @IBOutlet weak var FilterMainView: UIView!
    
    
    //VARIBALE'S
    var presenter = SearchPresenter()
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    //IBACTION'S
    @IBAction func FilterActionBtn(_ sender: UIButton) {
        changeFilterOrSearchStatus()
    }
    
    @IBAction func CancelBtnAction(_ sender: CustomBtnWithoutBG) {
        changeFilterOrSearchStatus()
    }
    
    @IBAction func ApplyBtnAction(_ sender: UIButton) {
        changeFilterOrSearchStatus()
    }
    
    @IBAction func ResetBtnAction(_ sender: UIButton) {
    }
    
    @IBAction func BackBtnAciton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

extension SearchVC {
    
    func changeFilterOrSearchStatus() {
        self.SearchMainView.isHidden = self.FilterMainView.isHidden
        self.FilterMainView.isHidden = !self.FilterMainView.isHidden
        presenter.searchData.isFilterShow = !self.FilterMainView.isHidden
    }
    
}

extension SearchVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, AdsCellResponder {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return presenter.searchData.searchTags.count
        } else {
            return presenter.searchData.adsData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView.tag == 0 {
            let cell = collectionView.register(SearchTagsCell.self, indexPath: indexPath)
            cell.config(data: self.presenter.searchData.searchTags[indexPath.row])
            return cell
        } else {
            let cell = collectionView.register(AdsCell.self, indexPath: indexPath)
            cell.config(data: presenter.searchData.adsData[indexPath.row], indexPath: indexPath, delegate: self)
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
            let widthPerItem = collectionView.frame.width / 3 - lay.minimumInteritemSpacing
            return CGSize(width:widthPerItem, height:33)
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
