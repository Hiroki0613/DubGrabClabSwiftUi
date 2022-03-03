//
//  HapticManager.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/03/03.
//

import UIKit

struct HapticManager {
    
    static func playSuccess() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
}
