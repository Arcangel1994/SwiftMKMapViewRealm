//
//  LocationVC.swift
//  Treads
//
//  Created by Miguel Muñoz on 12/5/18.
//  Copyright © 2018 ISA. All rights reserved.
//

import UIKit
import MapKit

class LocationVC: UIViewController, MKMapViewDelegate {

    var manager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        manager = CLLocationManager()
        manager?.desiredAccuracy = kCLLocationAccuracyBest
        manager?.activityType = .fitness

    }
    
    func checkLocationAuthStatus(){
        if CLLocationManager.authorizationStatus() != .authorizedWhenInUse{
            manager?.requestWhenInUseAuthorization()
        }
    }

}
