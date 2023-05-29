//
//  PostView.swift
//  TheNews
//
//  Created by Augusto Simionato on 28/05/23.
//

import SwiftUI

struct PostView: View {
    var news: News
    
    var body: some View {
        ScrollView {
            VStack {
                Image(news.imageName)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 20, height: 200)
                    .cornerRadius(10.0)

                HStack {
                    Text(news.title)
                        .font(.title)
                    
                    Spacer()
                    
                    MarkButton()
                }
                .padding()
                
                Text(news.content)
                    .padding(.leading)
                    .padding(.trailing)
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct MarkButton : View {
    @State var isPressed = false
    
    var body: some View {
        Button {
            let impactHeavy = UIImpactFeedbackGenerator(style: .soft)
            impactHeavy.impactOccurred()
            self.isPressed.toggle()
            
        } label: {
            Image(systemName: isPressed ? "bookmark.fill" : "bookmark")
                .font(.system(size: 20.0))
        }
    }
}


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(news: NewsList.posts.first!)
    }
}
