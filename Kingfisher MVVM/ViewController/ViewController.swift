//
//  ViewController.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import UIKit
import Kingfisher
class ViewController: UIViewController {
    
    var charecterVM = CharecterViewModel()
    
    @IBOutlet weak private var charecterCollectionView : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadApi()
        initialSetup()
    }
    
    //MARK:- load api
    func loadApi(){
        
        charecterVM.loadApi {[weak self] (isSuccess) in
            DispatchQueue.main.async {
                if isSuccess{
                    self?.charecterCollectionView.reloadData()
                }
            }
        }
        
        
    }
    
    
    //MARK:- Chacerter collectionview init setup
    
    private func initialSetup(){
        
        charecterCollectionView.delegate = self
        charecterCollectionView.dataSource = self
        charecterCollectionView.register(CharecterCollectionViewCell.nib(), forCellWithReuseIdentifier: CharecterCollectionViewCell.identifier)
        
        
    }
    
    
}




//MARK:- Collectionview Delegate and DataSource
extension ViewController : UICollectionViewDataSource,UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return charecterVM.rowCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell : CharecterCollectionViewCell = self.charecterCollectionView.dequeueReusableCell(withReuseIdentifier: CharecterCollectionViewCell.identifier, for: indexPath) as! CharecterCollectionViewCell
        cell.config(urlString: charecterVM.setImageUrl(index: indexPath.row))
        return cell
    }
}
//MARK:- FlowlA
extension ViewController : UICollectionViewDelegateFlowLayout{
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cvCellWidth = self.charecterCollectionView.bounds.width
        return CGSize(width: cvCellWidth / 4 - 2 , height: cvCellWidth / 4 - 2 )
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
