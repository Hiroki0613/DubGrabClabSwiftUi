//
//  DubGrabClabSwiftUiApp.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

@main
struct DubGrabClabSwiftUiApp: App {
    
    let locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(locationManager)
        }
    }
}
