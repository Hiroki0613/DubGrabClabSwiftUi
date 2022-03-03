//
//  ProfileSheetView.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/03/01.
//

import SwiftUI

// Alternative Profile View for larger dynamic type sizes
// We present this as as sheet instead of a small pop up

struct ProfileSheetView: View {
    
    var profile: DDGProfile
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image(uiImage: profile.avatarImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 110, height: 110)
                    .clipShape(Circle())
                    .accessibilityHidden(true)
                
                Text(profile.firstName + " " + profile.lastName)
                    .bold()
                    .font(.title2)
                    .minimumScaleFactor(0.9)
                
                Text(profile.companyName)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.9)
                    .foregroundColor(.secondary)
                    .accessibilityLabel(Text("Works at \(profile.companyName)"))
                
                Text(profile.bio)
                    .accessibilityLabel(Text("Bio, \(profile.bio)"))
            }
            .padding()
        }
    }
}

struct ProfileSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSheetView(profile: DDGProfile(record: MockData.profile))
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
