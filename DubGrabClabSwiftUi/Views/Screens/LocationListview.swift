//
//  LocationListview.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

struct LocationListview: View {
    
//    @State private var locations: [DDGLocation] = [DDGLocation(record: MockData.location)]
    @EnvironmentObject private var locationManager: LocationManager
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.location) { location in
                   
                    NavigationLink(destination: LocationDetailView(viewModel: LocationDetailViewModel(location: location))) {
                        LocationCell(location: location)
                    }
                }
               
            }
            .navigationTitle("Grub Spots")
            .onAppear {
                CloudKitManager.shared.getCheckedInProfileDictionary { result in
                    switch result {
                    case .success(let checkedInProfiles):
                        print(checkedInProfiles)
                    case .failure(_):
                        print("Error getting back dictionary")
                    }
                }
            }
            .listStyle(.plain)
        }
    }
}

struct LocationListview_Previews: PreviewProvider {
    static var previews: some View {
        LocationListview()
    }
}
