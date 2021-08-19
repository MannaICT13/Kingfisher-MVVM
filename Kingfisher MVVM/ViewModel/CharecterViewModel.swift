//
//  CharecterViewModel.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import Foundation

class CharecterViewModel{
    

    var charecterV = [CharecterModel]()
    
    
    var rowCount : Int{
        return charecterV.count
    }

    //MARK:- Loading api
    
    func loadApi(isSuccess :@escaping(Bool)->()){
        
    ApiService().apiDecoderFunc { [weak self] (results) in
        self?.charecterV = results
        if self?.charecterV.count ?? 0 > 0{
            isSuccess(true)
        }else{
            isSuccess(false)
        }
    }
        
        
    }
    
    //MARK:- Load image url
    func setImageUrl(index : Int) -> String{
        return charecterV[index].image
    }
    
    
    
}
