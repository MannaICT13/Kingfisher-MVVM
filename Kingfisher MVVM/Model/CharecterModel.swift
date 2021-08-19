//
//  CharecterModel.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import Foundation

class CharecterModel{
  

    let name : String
    let birthday :String
    let image : String
    
    internal init(name: String, birthday: String, image: String) {
        self.name = name
        self.birthday = birthday
        self.image = image
    }
    
    enum CodingKeys : String,CodingKey{
        
        case name,birthday
        case image = "img"
        
        
    }
    
    
    
}
