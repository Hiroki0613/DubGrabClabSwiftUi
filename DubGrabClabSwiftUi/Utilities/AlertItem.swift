//
//  AlertItem.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/19.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: -MapView Errors
    static let unableTogetLocations = AlertItem(title: Text("Locations Error"), message: Text("GPSの情報を取得できません。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationRestricted = AlertItem(title: Text("Locations Restricted"), message: Text("Locations Restricted。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationDenied = AlertItem(title: Text("Locations Denied"), message: Text("Location Denied。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
    
    static let locationDisabled = AlertItem(title: Text("Locations Service Disabled"), message: Text("Locations Service Disabled。もう一度、操作をお願いします"), dismissButton: .default(Text("OK")))
}

