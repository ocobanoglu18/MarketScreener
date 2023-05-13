//
//  TwitterView.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 13.04.2023.
//

import SwiftUI

struct TwitterView: View {
    var body: some View {
        VStack {
            ForEach (0...15, id: \.self) { tweets in
                HStack{
                    Image(systemName: "bookmark.fill").foregroundColor(.white)
                    Text("Hi Tweet")
                        .foregroundColor(.white)
                    Spacer()
                }.padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: UIScreen.main.bounds.height/13)
                    .background(Color.blue)
                    .cornerRadius(12)
                    .padding(.top,5)
            }
        }
    }
}

struct TwitterView_Previews: PreviewProvider {
    static var previews: some View {
        TwitterView()
    }
}
