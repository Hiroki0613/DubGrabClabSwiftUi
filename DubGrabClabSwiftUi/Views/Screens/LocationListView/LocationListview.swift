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
    @StateObject private var viewModel = LocationListViewModel()
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        NavigationView {
            List {
                ForEach(locationManager.location) { location in
                   
                    NavigationLink(destination: viewModel.createLocationDetailView(for: location, in: sizeCategory)) {
                        LocationCell(location: location, profiles: viewModel.checkedInProfiles[location.id, default: []])
                            .accessibilityElement(children: .ignore)
                            .accessibilityLabel(Text(viewModel.createVoiceOverSummary(for: location)))
                    }
                }
            }
            .navigationTitle("Grub Spots")
            .onAppear {
                viewModel.getCheckedInProfilesDictionary()
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
