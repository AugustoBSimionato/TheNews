//
//  WatchLaterView.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI

struct WatchLaterView: View {
    var news: [News] = NewsList.posts
    
    var body: some View {
//        NavigationView {
//            List(news, id: \.id) { new in
//                NavigationLink(destination: PostView(news: new), label: {
//                    NewsCell(news: new)
//                })
//            }
//            .navigationTitle("Watch Later")
//            .navigationBarTitleDisplayMode(.inline)
//        }
        NavigationView {
            VStack {
                Image("books")

                Text("It seems that you don't have any news to watch later.")
                    .frame(width: 250)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationTitle("Watch Later")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct WatchLaterView_Previews: PreviewProvider {
    static var previews: some View {
        WatchLaterView()
    }
}
