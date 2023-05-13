//
//  NewsView.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 17.04.2023.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack {
            ForEach (0...5, id: \.self) { tweets in
                HStack{
                    Image(systemName: "bookmark.fill").foregroundColor(.white)
                    Text("Hi News")
                        .foregroundColor(.white)
                    Spacer()
                }.padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(Color.green)
                .cornerRadius(12)
                .padding(.top,5)
            }
        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
