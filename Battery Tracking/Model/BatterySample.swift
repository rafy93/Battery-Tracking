//
//  BatterySamples.swift
//  Battery Tracking
//
//  Created by Raffaele Colantuono on 11/11/2018.
//  Copyright © 2018 Raffaele Colantuono. All rights reserved.
//

import UIKit

class BatterySample: NSObject {
    
    var status : Int
    var type : String
    var name : String
    
    init(status : Int,type : String,name : String){
        self.status = status
        self.type = type
        self.name = name
        
    }
}
