//
//  DetailVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 25/02/2023.
//

import UIKit

class DetailVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var ItemImagesCollection: UICollectionView!
    @IBOutlet weak var ProductTitle: H1Bold!
    @IBOutlet weak var ProductLocation: H3Medium!
    @IBOutlet weak var ProductPrice: H4Bold!
    @IBOutlet weak var ProductCategory: H3Medium!
    @IBOutlet weak var Detail: H2Medium!
    @IBOutlet weak var RelatedItemsList: UICollectionView!
    
    @IBOutlet weak var OwnerName: H2Bold!
    @IBOutlet weak var OwnerImage: UIImageView!
    @IBOutlet weak var OwnerLocation: H4Medium!
    
    
    //VARIABLE'S
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //IBACTION'S
    
    @IBAction func CallBtnAction(_ sender: UIButton) {
    }
    @IBAction func MessageBtnAction(_ sender: UIButton) {
    }
}

extension DetailVC {
    
    func setupUI() {
        
    }
    
}


//extension DetailVC: 
