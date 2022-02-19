//
//  LocationMapViewModel.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/19.
//

import SwiftUI
import MapKit

final class LocationMapViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
//    @Published var locations: [DDGLocation] = []
    
    func getLocations(for locationManager: LocationManager) {
        CloudKitManager.getLocations { [self] result in
            
            DispatchQueue.main.async {
                
                switch result {
                case .success(let locations):
                    locationManager.location = locations
                case .failure(_):
                    alertItem = AlertContext.unableTogetLocations
                }
            }
        }
    }
}
