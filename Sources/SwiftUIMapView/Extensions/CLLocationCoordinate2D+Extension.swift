/////
/// CLLocationCoordinate2D+Extension.swift
/// SwiftUIMapView
/// 
/// Created by Sascha Müllner on 15.12.20.
/// Unauthorized copying or usage of this file, via any medium is strictly prohibited.
/// Proprietary and confidential.
/// Copyright © 2020 Webblazer EG. All rights reserved.

import Foundation
import MapKit

let kEarthRadius = 6378137.0

internal func radians(degrees: Double) -> Double {
    return degrees * .pi / 180
}

public extension Array where Element == CLLocationCoordinate2D {
    func regionArea() -> Double {
        let locations = self
        guard locations.count > 2 else { return 0 }
        var area = 0.0

        for i in 0..<locations.count {
            let p1 = self[i > 0 ? i - 1 : locations.count - 1]
            let p2 = locations[i]

            area += radians(degrees: p2.longitude - p1.longitude) * (2 + sin(radians(degrees: p1.latitude)) + sin(radians(degrees: p2.latitude)) )
        }
        area = -(area * kEarthRadius * kEarthRadius / 2)
        return Swift.max(area, -area)
    }
}
