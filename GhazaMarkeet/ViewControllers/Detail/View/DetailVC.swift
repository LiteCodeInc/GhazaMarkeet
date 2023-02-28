//
//  DetailVC.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 25/02/2023.
//

import UIKit
import Localize_Swift

class DetailVC: UIViewController {

    //IBOUTLET'S
    @IBOutlet weak var ItemImagesCollection: UICollectionView!
    @IBOutlet weak var PageController: UIPageControl!
    @IBOutlet weak var ProductTitle: H2Bold!
    @IBOutlet weak var ProductLocation: H3Medium!
    @IBOutlet weak var ProductPrice: H4Bold!
    @IBOutlet weak var ProductCategory: H3Medium!
    @IBOutlet weak var Detail: H2Medium!
    @IBOutlet weak var RelatedItemsList: UICollectionView!
    @IBOutlet weak var OwnerName: H2Bold!
    @IBOutlet weak var OwnerImage: UIImageView!
    @IBOutlet weak var OwnerLocation: H4Medium!
    @IBOutlet weak var BackBtn: UIButton!
    @IBOutlet weak var BackBtnImage: UIImageView!
    
    
    //VARIABLE'S
    var presenter = DetailPresenter()
    
    
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
    }
    
    
    //IBACTION'S
    @IBAction func CallBtnAction(_ sender: UIButton) {
    }
    @IBAction func MessageBtnAction(_ sender: UIButton) {
    }
    @IBAction func BackBtnAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}


//MARK: -------------- HELPING METHOD'S -------------
extension DetailVC {
    
    func setupUI() {
        ProductPrice.textColor = price
        ProductCategory.textColor = theam
        if Localize.currentLanguage() == "ar" {
            Detail.text = Detail.text?.localized()
            Detail.textAlignment = .right
            setLineHeightOnDetail()
            BackBtnImage.image = UIImage(named: "DetailBackBtn")
        }
        
    }
    
    func setLineHeightOnDetail() {
        let attributedString = NSMutableAttributedString(string: Detail.text!.localized())
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 12
        paragraphStyle.maximumLineHeight = 22
        paragraphStyle.alignment = .right
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))

        // *** Set Attributed String to your label ***
        Detail.attributedText = attributedString
    }
    
}


//MARK: ------------- UICOLLECTIONS VIEW DELEGATE AND DATASOURCE ---------------
extension DetailVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, AdsCellResponder {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return 4
        } else {
            return presenter.relatedProducts.adsData.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell = collectionView.register(PostImagesCell.self, indexPath: indexPath)
            return cell
        } else {
            let cell = collectionView.register(AdsCell.self, indexPath: indexPath)
            cell.config(data: presenter.relatedProducts.adsData[indexPath.row], indexPath: indexPath, delegate: self)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView.tag == 0 {
            return CGSize(width:collectionView.frame.width, height:collectionView.frame.height)
        } else {
            let lay = collectionViewLayout as! UICollectionViewFlowLayout
            let widthPerItem = collectionView.frame.width / 2 - lay.minimumInteritemSpacing
            return CGSize(width:widthPerItem, height:200)
        }
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        var visibleRect = CGRect()

        visibleRect.origin = ItemImagesCollection.contentOffset
        visibleRect.size = ItemImagesCollection.bounds.size

        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)

        guard let indexPath = ItemImagesCollection.indexPathForItem(at: visiblePoint) else { return }

        PageController.currentPage = indexPath.row
    }
    
    
    // DELEGATE METHOD'S
    func AdsResponder(respondType: AdCellRespondType, indexPath: IndexPath) {
        
    }

}
