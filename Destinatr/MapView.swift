//
//  MapView.swift
//  Destinatr
//
//  Created by Richer Archambault on 2017-03-11.
//  Copyright © 2017 LassondeHacks. All rights reserved.
//

import UIKit
import MapKit
import Stevia

class MapView: UIView {
    
    var mapsView: MKMapView?
    
    convenience init() {
        self.init(frame:CGRect.zero)
        // This is only needed for live reload as injectionForXcode
        // doesn't swizzle init methods.
        render()
    }
    
    func render() {
        
        mapsView = MKMapView()
        
        mapsView?.frame = CGRect(x:10, y:10, width:frame.size.width-20, height:100)
        mapsView?.mapType = MKMapType.standard
        mapsView?.isZoomEnabled = true
        mapsView?.isScrollEnabled = true
        
        sv(mapsView!)
        
        layout(mapsView!)
        
    }
}
