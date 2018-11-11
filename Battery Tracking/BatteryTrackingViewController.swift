//
//  ViewController.swift
//  Battery Tracking
//
//  Created by Raffaele Colantuono on 09/11/2018.
//  Copyright © 2018 Raffaele Colantuono. All rights reserved.
//

import UIKit

class BatteryTrackingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var batteryArray = [BatterySample(status: 98, type: "Li-Po", name: "Drone Corsa"),
                        BatterySample(status: 82, type: "Li-Po", name: "Drone Riprese"),
                        BatterySample(status: 76, type: "Litio", name: "Reflex Canon"),
                        BatterySample(status: 98, type: "Li-Po", name: "Drone Corsa"),
                        BatterySample(status: 82, type: "Li-Po", name: "Drone Riprese"),
                        BatterySample(status: 76, type: "Litio", name: "Reflex Canon"),
                        BatterySample(status: 98, type: "Li-Po", name: "Drone Corsa"),
                        BatterySample(status: 82, type: "Li-Po", name: "Drone Riprese"),
                        BatterySample(status: 76, type: "Litio", name: "Reflex Canon")]

    @IBOutlet weak var BatteryCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set delegates
        self.BatteryCollectionView.delegate = self
        self.BatteryCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //ritorna il numero di celle/ tiles
        return batteryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = BatteryCollectionView.dequeueReusableCell(withReuseIdentifier: "BatteryCollectionViewCell", for: indexPath) as! BatteryCollectionViewCell
        
        cell.setData(status: batteryArray[indexPath.row].status, type: batteryArray[indexPath.row].type, name: batteryArray[indexPath.row].name)
        
        return cell
    }


}

