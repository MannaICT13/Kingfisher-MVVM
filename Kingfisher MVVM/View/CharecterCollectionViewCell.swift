//
//  CharecterCollectionViewCell.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import UIKit
import Kingfisher

class CharecterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var charecterImageView: UIImageView!
    
     static let identifier = "CharecterCollectionViewCell"
    
     static func nib() -> UINib{
        
        return UINib(nibName: "CharecterCollectionViewCell", bundle: nil)
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    //MARK:- Configuration fucntion
    func config(urlString : String){
        let imgUrl = URL(string: urlString)
        self.charecterImageView.kf.setImage(with: imgUrl)
    }

}
