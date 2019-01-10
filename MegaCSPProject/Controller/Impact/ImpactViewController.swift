//
//  ViewController.swift
//  GlobalImpactApp
//
//  Created by Veliz, Luis on 1/10/19.
//  Copyright © 2019 CTEC. All rights reserved.
//

import UIKit
import MapKit

public class ImpactViewController: UIViewController
{
    @IBOutlet weak var MapKit: MKMapView!
    @IBOutlet weak var Button: UIButton!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
   public override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    @IBAction func Button(_ sender: UIButton)
    {
        let impactLocation = CLLocationCoordinate2D(latitude: -17.650920, longitude: -149.426042)
        let mapSpan = MKCoordinateSpan(latitudeDelta: 10.05, longitudeDelta: 10.05)
        let impactRegion = MKCoordinateRegion(center: impactLocation, span: mapSpan)
        MapKit.animatedZoom(zoomRegion: impactRegion, duration: 2.5)
    }
    

}

extension MKMapView
{
    public func animatedZoom(zoomRegion:MKCoordinateRegion, duration:TimeInterval)
    {
        MKMapView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 10, options: UIView.AnimationOptions.curveEaseIn, animations:
            { self.setRegion(zoomRegion, animated: true) }, completion: nil)
    }
}
