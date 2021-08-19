//
//  ApiService.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import Foundation

class ApiService{
    
    //MARK:- Retrive data from api using JSONDecoder
    func apiDecoderFunc(completion : @escaping([CharecterModel])->()){
        
        var charecterM = [CharecterModel]()
         let urlString = "https://www.breakingbadapi.com/api/characters?"
        
        guard let url = URL(string: urlString) else{return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let data = data {
                
                do {
                    
                    let decoder = JSONDecoder()
                    
                    let charecterData =  try decoder.decode([CharecterModel].self, from: data)
                   
                    DispatchQueue.main.async {
                        for result in charecterData{
                            charecterM.append(CharecterModel(name: result.name, birthday: result.birthday, image: result.image))
                          //  print(result.image)
                        }
                        completion(charecterM)
                       
                    }
                   
                    
                    
                } catch let err {
                    print(err.localizedDescription)
                    return
                }
                
                
            }else{
                return
            }
            
            
            
            
        }.resume()
        
        
        
        
        
    }
    
    
    
    
    
    
    
}
