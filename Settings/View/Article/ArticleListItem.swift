//
//  ArticleListItem.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct ArticleListItem: View {
    var article: Article
    
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            Image("discord").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 60, alignment: .center).clipShape(RoundedRectangle(cornerRadius: 8.0))
            VStack(alignment: .leading, spacing: 10) {
                Text(article.title).font(.system(size: 16, weight: .semibold))
                HStack {
                    Text(article.source)
                    Text(article.dateCreated!)
                }.font(.caption).foregroundColor(.gray)
            }
        }.padding(.vertical, 10)
    }
}

struct ArticleListItem_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListItem(article: (Article.dummyData.first)!)
    }
}
