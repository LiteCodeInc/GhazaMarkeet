//
//  SubCategoriesVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 23/02/2023.
//

import UIKit

class SubCategoriesVC: UIViewController {
    
    //IBOUTLET'S
    @IBOutlet weak var SubTypesList: UICollectionView!
    
    //VARIBALE'S
    var presenter = SubCategoriesPresenter()
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.toolbar.isHidden = true
        self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.navigationController?.hidesBarsOnTap = true
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()

            // this one worked the best
            navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    //IBACTION'S
    
}


extension SubCategoriesVC {
    
    func setupUI() {
        
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

