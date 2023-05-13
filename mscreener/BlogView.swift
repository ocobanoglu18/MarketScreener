//
//  BlogView.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 17.04.2023.
//

import SwiftUI

struct BlogView: View {
    var body: some View {
        VStack {
            ForEach (0...5, id: \.self) { tweets in
                HStack{
                    Image(systemName: "bookmark.fill").foregroundColor(.white)
                    Text("Hi Blog")
                        .foregroundColor(.black)
                    Spacer()
                }.padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                .background(Color.white)
                .cornerRadius(12)
                .padding(.top,5)
            }
        }
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}
