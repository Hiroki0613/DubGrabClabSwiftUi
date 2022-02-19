//
//  View+Ext.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
    
    func dismissKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
