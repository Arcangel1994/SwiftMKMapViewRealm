//
//  BeginRunVC.swift
//  Treads
//
//  Created by Miguel Muñoz on 12/5/18.
//  Copyright © 2018 ISA. All rights reserved.
//

import UIKit
import MapKit

class BeginRunVC: LocationVC{
    
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        checkLocationAuthStatus()
        
        mapView.delegate = self

    }

    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self
        manager?.startUpdatingLocation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        manager?.stopUpdatingLocation()
    }
    
    @IBAction func locationCenterBtnPressed(_ sender: UIButton) {
        
    }
    
}

extension BeginRunVC: CLLocationManagerDelegate{
  
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        if status == .authorizedWhenInUse{
            checkLocationAuthStatus()
            mapView.showsUserLocation = true
            mapView.userTrackingMode = .follow
        }
        
    }
    
}
