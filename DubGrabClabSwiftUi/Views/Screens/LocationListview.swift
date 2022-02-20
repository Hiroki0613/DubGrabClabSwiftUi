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
            .listStyle(.plain)
        }
    }
}

struct LocationListview_Previews: PreviewProvider {
    static var previews: some View {
        LocationListview()
    }
}
