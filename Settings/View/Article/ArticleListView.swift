//
//  ArticleListView.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct ArticleListView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Article.dummyData, id:\.id) { article in
                    NavigationLink(
                        destination: ArticleContent(article: article),
                        label: {
                            ArticleListItem(article: article)
                        })
                }
            }
            .navigationTitle("Articles")
        }
    }
}

struct ArticleListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleListView()
    }
}
