//
//  MapController.swift
//  map
//
//  Created by Evgeni' Roslik on 4/30/17.
//  Copyright © 2017 Evgeni' Roslik. All rights reserved.
//

import UIKit
import MapKit

class MapController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var mapView: MKMapView!
    let regionRadius: CLLocationDistance = 100000;
    var city:String = String();
    var desc:String = String();
    var temp:Double = Double();
    var lon:Double = Double();
    var lat:Double = Double();
    var currentWeather:WeatherStats!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar?.title = city;
        let currentLocation = CLLocation(latitude: lat, longitude: lon);
        centerMap(location: currentLocation);
        let annotation = MKPointAnnotation();
        annotation.title = city;
        annotation.subtitle = "Current weather is : \(temp) °C"
        annotation.coordinate = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        mapView.delegate = self;
        mapView.addAnnotation(annotation);
        mapView.selectAnnotation(annotation, animated: true);
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func centerMap(location:CLLocation){
        let coordinates = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0);
        mapView.setRegion(coordinates, animated: true);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
