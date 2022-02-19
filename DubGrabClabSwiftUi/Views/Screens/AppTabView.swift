//
//  AppTabView.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            LocationMapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            LocationListview()
                .tabItem {
                    Label("Location", systemImage: "building")
                }
            
            NavigationView {
                ProfileView()
            }
            .tabItem {
                Label("Profile", systemImage: "person")
            }
        }
        .onAppear {
            CloudKitManager.shared.getUserRecord()
        }
        .accentColor(Color.brandPrimary)

    }
}

struct AppTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppTabView()
    }
}
