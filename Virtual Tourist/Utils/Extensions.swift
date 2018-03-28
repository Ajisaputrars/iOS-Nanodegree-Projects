//
//  Extensions.swift
//  Virtual Tourist
//
//  Created by Rajanikant Deshmukh on 28/03/18.
//  Copyright © 2018 Rajanikant Deshmukh. All rights reserved.
//

import Foundation
import UIKit
import MapKit

extension UIViewController {
    
    func showAlertDialog(title: String, message: String, dismissHandler: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: dismissHandler))
        self.present(alert, animated: true)
    }
}

extension Place {
    
    func getAnnotation() -> MKAnnotation {
        let annotation = MKPointAnnotation()
        annotation.title = self.locationString
        annotation.coordinate = CLLocationCoordinate2DMake(self.latitude, self.longitude)
        annotation.subtitle = "Tap to see album"
        return annotation
    }
    
}
