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
}
