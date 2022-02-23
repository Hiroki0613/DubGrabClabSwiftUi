//
//  AppTabViewModel.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/23.
//

import CoreLocation

final class AppTabViewModel: NSObject, ObservableObject {
    
    @Published var isShowingOnboardView = false
    @Published var alertItem: AlertItem?
    
    var deviceLocationManager: CLLocationManager?
    
    let kHasSeenOnboardView = "hasSeenOnboardView"
    
    var hasSeenOnboardView: Bool {
        return UserDefaults.standard.bool(forKey: kHasSeenOnboardView)
    }
    
    
    func runStartupChecks() {
        if !hasSeenOnboardView {
            isShowingOnboardView = true
            UserDefaults.standard.set(true, forKey: kHasSeenOnboardView)
        }else {
            checkIfLocationServicesIsEnabled()
        }
    }
    
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            deviceLocationManager = CLLocationManager()
//            deviceLocationManager?.desiredAccuracy = kCLLocationAccuracyBest
            deviceLocationManager!.delegate = self
        } else {
            alertItem = AlertContext.locationDisabled
        }
    }
    
    
    private func checkLocationAuthorization() {
        guard let deviceLocationManager = deviceLocationManager else {
            return
        }

        switch deviceLocationManager.authorizationStatus {
            
        case .notDetermined:
            deviceLocationManager.requestWhenInUseAuthorization()
        case .restricted:
            alertItem = AlertContext.locationRestricted
        case .denied:
            alertItem = AlertContext.locationDenied
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
    }
}

extension AppTabViewModel: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
