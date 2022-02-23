//
//  MapBallon.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/23.
//

import SwiftUI

struct MapBallon: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.minY),
                          control: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.midX, y: rect.maxY),
                          control: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
}

struct MapBallon_Previews: PreviewProvider {
    static var previews: some View {
        MapBallon()
            .frame(width: 300, height: 240)
            .foregroundColor(.brandPrimary)
    }
}
