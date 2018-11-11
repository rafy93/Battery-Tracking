//
//  BatteryCollectionViewCell.swift
//  Battery Tracking
//
//  Created by Raffaele Colantuono on 11/11/2018.
//  Copyright © 2018 Raffaele Colantuono. All rights reserved.
//

import UIKit

class BatteryCollectionViewCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var bgView: UIView!
    
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var batteryNameLabel: UILabel!
    
    func setData(status : Int,type : String,name : String){
        //Cell properties
        self.bgView.layer.cornerRadius = 16
       //Codice da aggiungere per le ombre
        
        if(status>90){
            self.bgView.backgroundColor = UIColor(displayP3Red: 91.0/255.0, green: 196.0/255.0, blue: 90.0/255.0, alpha: 1)
        }else if(status>80){
            self.bgView.backgroundColor = UIColor(displayP3Red: 250.0/255.0, green: 218.0/255.0, blue: 92.0/255.0, alpha: 1)
        }else{
            self.bgView.backgroundColor = UIColor(displayP3Red: 222.0/255.0, green: 89.0/255.0, blue: 89.0/255.0, alpha: 1)
        }
 
        
        //Cell Data
        self.statusLabel.text = String(status) + "%"
        self.typeLabel.text = type
        self.batteryNameLabel.text = name
        
    }
}
