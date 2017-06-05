//
//  ViewController.swift
//  BoatRampApp
//
//  Created by koneti santhosh kumar on 04/06/17.
//  Copyright © 2017 ios. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    var currentLocation: CLLocation!

    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  let fileStr = Bundle.paths(forResourcesOfType: "", inDirectory: "")
       // let array = NSArray(contentsOfFile: "")
        // Do any additional setup after loading the view, typically from a nib.
        self.checklocationAuthentication()
        
        
    }
    
    func checklocationAuthentication(){
        LFLocationService.sharedInstance.delegate = self
        LFLocationService.sharedInstance.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    

}


extension ViewController:LocationServiceDelegate{
    
    
    func tracingLocation( _ currentLocation: CLLocation,  _ locationManager: CLLocationManager){
        
        self.currentLocation = locationManager.location
        
  
    }
    
    func tracingLocationDidFailWithError(_ error: NSError){
        
    }
    func tracingLocationDetails(_ currentLocationDetails: CLPlacemark){
        
}

}

