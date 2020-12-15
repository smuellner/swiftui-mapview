/////
/// MKOverlay+Extension.swift
/// SwiftUIMapView
/// 
/// Created by Sascha Müllner on 15.12.20.
/// Unauthorized copying or usage of this file, via any medium is strictly prohibited.
/// Proprietary and confidential.
/// Copyright © 2020 Webblazer EG. All rights reserved.

import Foundation
import MapKit

public extension MKOverlay {
    var regionArea: Double {
        self.boundingMapRect.width * self.boundingMapRect.height
    }
}
