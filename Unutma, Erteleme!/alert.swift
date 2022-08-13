//
//  alert.swift
//  Unutma, Erteleme!
//
//  Created by Macbook Air on 9.08.2022.
//

import Foundation
import UIKit

func showAlert(errBody : String,errTitle : String) ->UIAlertController{
    let alert = UIAlertController(title: errTitle, message: errBody, preferredStyle: UIAlertController.Style.alert)
    let okBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel)
    alert.addAction(okBtn)
    return alert
    
    
}
