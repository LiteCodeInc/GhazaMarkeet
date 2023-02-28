//
//  AdsCell.swift
//  GhazaMarkeet
//
//  Created by Mapple.pk on 22/02/2023.
//

import UIKit

enum AdCellRespondType {
    case adOptions
    case showAd
    case deleteAd
    case editAd
}

protocol AdsCellResponder {
    func AdsResponder(respondType: AdCellRespondType, indexPath:IndexPath)
}

class AdsCell: UICollectionViewCell {
    
    //IBOUTLET'S
    @IBOutlet weak var Thumbnail: UIImageView!
    @IBOutlet weak var AdTitle: UILabel!
    @IBOutlet weak var Location: H4Light!
    @IBOutlet weak var PostDate: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var OptionView: UIView!
    @IBOutlet weak var OptionBtn: UIButton!
    @IBOutlet weak var EditBtn: UIButton!
    @IBOutlet weak var DeleteBtn: UIButton!
    
    //VARIABLE'S
    var delegate: AdsCellResponder?
    var indexPath = IndexPath()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        EditBtn.setTitle(Constant.edit.localized(), for: .normal)
        DeleteBtn.setTitle(Constant.delete.localized(), for: .normal)
    }
    
    
    //IBACTION'S
    @IBAction func EditBtnAction(_ sender: UIButton) {
        self.delegate?.AdsResponder(respondType: .editAd, indexPath: self.indexPath)
    }
    
    @IBAction func DeleteBtnAction(_ sender: UIButton) {
        self.delegate?.AdsResponder(respondType: .deleteAd, indexPath: self.indexPath)
    }
    
    @IBAction func ItemClickBtnAction(_ sender: UIButton) {
        self.delegate?.AdsResponder(respondType: .showAd, indexPath: self.indexPath)
    }
    
    @IBAction func OptionAdBtnAction(_ sender: UIButton) {
        self.delegate?.AdsResponder(respondType: .adOptions, indexPath: self.indexPath)
    }
    
    func config(data: MyAdsModel, indexPath:IndexPath, delegate view : AdsCellResponder) {
        self.Thumbnail.image = UIImage(named: data.thumbnail)
        self.AdTitle.text = data.adTitle
        self.Location.text = data.location
        self.PostDate.text = data.date
        self.PriceLabel.text = "$\(data.price)"
        self.OptionView.isHidden = !data.isShowOption
        self.OptionBtn.isHidden = !data.isShowOptionBtn
        self.indexPath = indexPath
        self.delegate = view
    }
    
}
