//
//  ProfileModalView.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/20.
//

import SwiftUI

struct ProfileModalView: View {
    var body: some View {
        ZStack {
            VStack{
                Spacer().frame(height: 60)
                Text("Sean Allen")
                    .bold()
                    .font(.title2)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                Text("Test Company")
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                    .foregroundColor(.secondary)
                
                Text("This is my sample bio. Let's keep typing to see how long we can make this, how does the padding look.")
                    .lineLimit(3)
                    .padding()
                
            }
            .frame(width: 300, height: 230)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(16)
            .overlay(
                Button {
                    
                } label: {
                    XDismissButton()
                }, alignment: .topTrailing
            )
            
            Image(uiImage: PlaceholderImage.avatar)
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 110)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 6)
                .offset(y: -120)
        }
    }
}

struct ProfileModalView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileModalView()
    }
}
