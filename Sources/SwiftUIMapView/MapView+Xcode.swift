//
//  MapView+Xcode.swift
//  SwiftUIMapView
//
//  Created by Sören Gade on 26.06.20.
//

#if canImport(DeveloperToolsSupport)
import DeveloperToolsSupport

@available(iOS 15.0, *)
struct LibraryViewContent: LibraryContentProvider {
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(MapView())
    }
}
#endif
