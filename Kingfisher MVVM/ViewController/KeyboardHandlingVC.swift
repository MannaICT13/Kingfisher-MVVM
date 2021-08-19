//
//  KeyboardHandlingVC.swift
//  Kingfisher MVVM
//
//  Created by Sharetrip-iOS on 19/08/2021.
//

import UIKit

class KeyboardHandlingVC: UIViewController,UITextFieldDelegate{

    
    @IBOutlet weak private var textField1: UITextField!
    @IBOutlet weak private var textField2: UITextField!
    @IBOutlet weak private var textField3: UITextField!
    @IBOutlet weak private var textField4: UITextField!
    @IBOutlet weak private var textField5: UITextField!
    @IBOutlet weak private var textField6: UITextField!
    @IBOutlet weak private var textField7: UITextField!
    @IBOutlet weak private var textField8: UITextField!
    @IBOutlet weak private var textField9: UITextField!
    @IBOutlet weak private var textField10: UITextField!
    @IBOutlet weak private var textField11: UITextField!
    @IBOutlet weak private var textField12: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField2.returnKeyType = .done
        textField2.delegate = self

      
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField2.endEditing(false)
    }


}
