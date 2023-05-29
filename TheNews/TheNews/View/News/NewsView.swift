//
//  NewsView.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI

struct NewsView: View {
    var news: [News] = NewsList.posts
    
    var body: some View {
        NavigationView {
            List(news, id: \.id) { new in
                NavigationLink(destination: PostView(news: new), label: {
                    NewsCell(news: new)
                })
            }
            .navigationTitle("Sumary")
            .navigationBarTitleDisplayMode(.inline)
        }
        .refreshable {
            
        }
    }
}

struct NewsCell: View {
    var news: News
    
    var body: some View {
        HStack {
            Image(news.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(news.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                Text(news.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
        .swipeActions {
            Button {
                
            } label: {
                Image(systemName: "checkmark.circle.fill")
            }
            .tint(.green)
            .onTapGesture {
                let impactMed = UIImpactFeedbackGenerator(style: .soft)
                    impactMed.impactOccurred()
            }

        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
