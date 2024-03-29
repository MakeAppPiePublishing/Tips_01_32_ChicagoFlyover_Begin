//
//  ViewController.swift
//  ChicagoFlyover
//
//  Created by Steven Lipton on 6/1/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit
import MapKit

class ViewController:UIViewController{

    @IBOutlet weak var mapview: MKMapView!
    var timer = Timer()
    let startlocation = CLLocationCoordinate2DMake(41.851, -87.6238) //23rd and S. Michigan
    let endLatitude = 41.91 //North Avenue Beach
    
    @IBAction func flyOverChicago(_ sender: UIButton) {
        animate()
    }
    
    func startMapView(){
        mapview.frame = view.frame
        let mapcamera = MKMapCamera(lookingAtCenter: startlocation, fromDistance: 500, pitch: 60, heading: 0.0)
        mapview.mapType = .standard
        mapview.camera = mapcamera
    }
    
    func animate(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startMapView()
    }
}

