//
//  PodtAdVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 21/02/2023.
//

import UIKit

class PodtAdVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var AdsImagesList: UICollectionView!
    @IBOutlet weak var AdsImagesListHeight: NSLayoutConstraint!
    @IBOutlet weak var UploadImagesBtn: CustomBtnWithBG!
    @IBOutlet weak var PostBtn: CustomBtnWithBG!
    @IBOutlet weak var CancelBtn: CustomBtnWithoutBG!
    
    
    //VARIABLE'S
    var presenter = PostAdsPresenter()
    
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
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 0
    }
    
}

extension PodtAdVC {
    
    func setupUI() {
        UploadImagesBtn.setTitle(Constant.images, for: .normal)
        PostBtn.setTitle(Constant.post, for: .normal)
        CancelBtn.setTitle(Constant.cancel, for: .normal)
    }
    
}


extension PodtAdVC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter.tempImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.register(AdsImagesCell.self, indexPath: indexPath)
        cell.config(image: presenter.tempImages[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        Router.pushVC(from: self, to: SubCategoriesVC())
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        let lay = collectionViewLayout as! UICollectionViewFlowLayout
//        var size = collectionView.frame.width / 3 - lay.minimumInteritemSpacing
        return CGSize(width: 73, height:73)
        
    }
    
}
