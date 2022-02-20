//
//  LocationDetailViewModel.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/20.
//

import SwiftUI
import MapKit
import CloudKit

enum CheckInStatus {
    case checkedIn, checkedOut
}

final class LocationDetailViewModel: ObservableObject {
    
    @Published var alertItem: AlertItem?
    @Published var isShowingProfileModal = false
    
    let columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    
    var location: DDGLocation
    
    init(location: DDGLocation) {
        self.location = location
    }
    
    
    func getDirectionToLocation() {
        
        let placemark = MKPlacemark(coordinate: location.location.coordinate)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = location.name
        
        mapItem.openInMaps(launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeWalking])
        
    }
    
    
    func callLocation() {
        guard let url = URL(string: "tel://\(location.phoneNumber)") else {
            alertItem = AlertContext.invalidPhoneNumber
            return
        }
        UIApplication.shared.open(url)
    }
    
    func updateCheckInStatus(to checkInstatus: CheckInStatus) {
        // Retrieve the DDGProfile
        
        guard let profileRecordID = CloudKitManager.shared.profileRecordID else {
            // show an alert
            return
            
        }
        
        CloudKitManager.shared.fetchRecord(with: profileRecordID) { [self] result in
            switch result {
            case .success(let record):
                // Create a reference to the location
                switch checkInstatus {
                case .checkedIn:
                    record[DDGProfile.kIsCheckedIn] = CKRecord.Reference(recordID: location.id, action: .none)
                case .checkedOut:
                    record[DDGProfile.kIsCheckedIn] = nil
                }
                // Save the updated profile to CloudKit
                CloudKitManager.shared.save(record: record) { result in
                    switch result {
                    case .success(_):
                        // update our checkedInProfiles array
                        print("check In/Out Successfully")
                    case .failure(_):
                        print("Error saving record")
                    }
                }
                
            case .failure(_):
                print("Error fetchin record")
            }
        }
    }
    
}
