//
//  TelegramView.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 17.04.2023.
//

import SwiftUI

struct TelegramView: View {
    var body: some View {
        VStack {
            ForEach (0...5, id: \.self) { tweets in
                HStack{
                    Image(systemName: "bookmark.fill").foregroundColor(.white)
                    Text("Hi Telegram")
                        .foregroundColor(.white)
                    Spacer()
                }.padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                .background(Color.blue)
                .cornerRadius(12)
                .padding(.top,5)
            }
        }
    }
}

struct TelegramView_Previews: PreviewProvider {
    static var previews: some View {
        TelegramView()
    }
}
