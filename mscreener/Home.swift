//
//  Home.swift
//  mscreener
//
//  Created by Adnan Cobanoglu on 13.04.2023.
//

import SwiftUI

struct Home: View {
    @State var activeTab: Tab = .Twitter
    @State var twitterButton = false
    @State var redditButton = false
    @State var telegramButton = false
    @State var blogButton = false
    @State var newsButton = false
    var body: some View {
        NavigationView {
            VStack {
                headTextView()
                cardView()
                buttonView()
            }
            .navigationTitle("marketscreener")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "list.bullet").foregroundColor(.white)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                    } label: {
                        NavigationLink {
                            Profile()
                        } label: {
                            Image(systemName: "person").foregroundColor(.white)
                        }
                        
                        
                    }
                    
                }
                
            }
        }
    }
    
    @ViewBuilder
    func cardView() -> some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 12) {
                Button {
                    activeTab = .Twitter
                    twitterButton=true
                } label: {
                    MscreenerText.twitter.asText
                        .foregroundColor(twitterButton ? .white : .blue)
                }
                .buttonStyle(.bordered)
                .background(twitterButton ? .blue : .white)
                .cornerRadius(12)
                
                Button {
                    activeTab = .Telegram
                    telegramButton=true
                } label: {
                    MscreenerText.telegram.asText
                        .foregroundColor(telegramButton ? .white : .blue)
                }.buttonStyle(.bordered)
                    .background(telegramButton ? .blue : .white).cornerRadius(12)
                
                Button {
                    activeTab = .Reddit
                    redditButton=true
                } label: {
                    MscreenerText.reddit.asText
                        .foregroundColor(redditButton ? .white : .blue)
                }.buttonStyle(.bordered)
                    .background(redditButton ? .blue : .white)
                    .cornerRadius(12)
                
                Button {
                    activeTab = .News
                } label: {
                    MscreenerText.news.asText
                        .foregroundColor(.blue)
                }.buttonStyle(.bordered).background(.white).cornerRadius(12)
                
                Button {
                    activeTab = .Blog
                } label: {
                    MscreenerText.blog.asText
                        .foregroundColor(.blue)
                }.buttonStyle(.bordered).background(.white).cornerRadius(12)
            }
        }.padding(.top)
            .padding(.leading)
    }
    
    @ViewBuilder
    func buttonView() -> some View{
        
        ScrollView(.vertical,showsIndicators: false) {
            VStack{
                switch activeTab {
                case .Twitter:
                    TwitterView()
                case .Reddit:
                    RedditView()
                case .Telegram:
                    TelegramView()
                case .News:
                    NewsView()
                case .Blog:
                    BlogView()
                }
                
            }
            Spacer()
        }.padding(.top)
    }
    
    @ViewBuilder
    func headTextView() -> some View{
        VStack {
            MscreenerText.mainheadertext.asText
                .foregroundColor(.orange)
                .lineLimit(3)
                .frame(maxWidth: .infinity)
        }
        .background(.black)
        .padding(.top)
        Divider().frame(height:6).background(.orange)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
