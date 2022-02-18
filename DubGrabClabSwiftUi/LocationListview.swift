//
//  LocationListview.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import SwiftUI

struct LocationListview: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                   
                    HStack {
                        Image("default-square-asset")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .padding(.vertical, 8)
                        
                        VStack(alignment: .leading) {
                            Text("Test Location Name")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .minimumScaleFactor(0.75)
                            
                            HStack {
                                AvatarView()
                                AvatarView()
                                AvatarView()
                                AvatarView()
                                AvatarView()
                            }
                        }
                        .padding(.leading)
                    }
        
            
                }
            }
            .navigationTitle("Grub Spots")

     
        }
    }
}

struct LocationListview_Previews: PreviewProvider {
    static var previews: some View {
        LocationListview()
    }
}


struct AvatarView: View {
    var body: some View {
        Image("default-avatar")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35)
            .clipShape(Circle())
    }
}
