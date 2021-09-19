//
//  Article.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import SwiftUI

struct ArticleContent: View {
    let article: Article
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 10) {
                Text(article.title).fontWeight(.semibold).font(.title)
                HStack {
                    Text("Publish Date: Sample").fontWeight(.regular)
                    Text("Fetch Date: Sample").fontWeight(.regular)
                }.foregroundColor(.gray)
                HStack{
                    Text("Source: " + article.source).font(.caption)
                    Text("Author: " + article.author!).font(.caption)
                }.foregroundColor(.gray)
                Text(article.content).fontWeight(.regular).multilineTextAlignment(.leading)
                Link(destination: URL(string: article.link)!) {
                    Text("Other sources").font(.system(size: 14)).italic()
                }.padding(.vertical)
                Link(destination: URL(string: article.link)!) {
                    Text("Read the original Article").font(.system(size: 14)).italic()
                }.padding(.vertical)
                Text("Pictures courtesy. We do not keep any record of images, audio, video, or any othe graphic content for our own use. All rights reserved.").font(.footnote)
                    .fontWeight(.light)
            }.padding([.horizontal])
        }
        .navigationBarTitle(article.politician)
    }
}

struct ArticleContent_Previews: PreviewProvider {
    static var previews: some View {
        ArticleContent(article: Article.dummyData.first!)
    }
}
