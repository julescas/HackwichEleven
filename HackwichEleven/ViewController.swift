//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Julianne Castillo on 11/16/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    
    let regionRadius = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    centerMapOnLocation(location: initialLocation)
        
    let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
   
        let restaurantTwo = Restaurant(title: "Assaggio", type: "Italian-American", coordinate: CLLocationCoordinate2D(latitude: 21.33267, longitude: -158.08283))
                                   
        mapView.addAnnotation(restaurantOne)
        mapView.addAnnotation(restaurantTwo)
        
    }
    
    func centerMapOnLocation(location: CLLocation){
        
    let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    }
