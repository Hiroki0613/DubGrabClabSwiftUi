//
//  DDG.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

struct DDGButton: View {
    
    var title: String
    var color: Color = .brandPrimary
    
    var body: some View {
        Text(title)
            .bold()
            .frame(width: 280, height: 44)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}

struct DDG_Previews: PreviewProvider {
    static var previews: some View {
        DDGButton(title: "Test Button")
    }
}
