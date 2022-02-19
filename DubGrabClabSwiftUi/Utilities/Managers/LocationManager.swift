//
//  LocationManager.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/19.
//

import SwiftUI

final class LocationManager: ObservableObject {
    @Published var location: [DDGLocation] = []
}
