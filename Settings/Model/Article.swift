//
//  Article.swift
//  Settings
//
//  Created by Michael Amiro on 19/09/2021.
//

import Foundation

struct Article {
    var id: String
    var politician: String
    var title: String
    var content: String
    var source: String
    var author: String?
    var link: String
    var dateCreated: String?
    var dateFetched: String?
    
    
}
extension Article {
    static let dummyData = [
        Article(id: "123456363", politician: "Moses Kuria", title: "Moses Kuria implicated in the Kimwaror Dam Scandal", content: "We will use the requests module to get the HTML code from the page and then navigate through it with the BeautifulSoup package. We will learn to use two commands that will be enough for our task: find_all(element tag, attribute): it allows us to locate any HTML element from a webpage introducing its tag and attributes. This command will locate all the elements of the same type. In order to get only the first one, we can use find() instead. get_text(): once we have located a given element, this command will allow us to extract the text inside. So, at this point, what we need to do is to navigate through the HTML code of our webpage (for example, in Google Chrome we need to enter the webpage, press right click button and go to See source code) and locate the elements we want to scrape. We can simply do this searching with Ctrl+F or Cmd+F once we are seeing the source code. Once we have identified the elements of interest, we will get the HTML code with the requests module and extract those elements with BeautifulSoup.", source: "Nation Digital", author: "Johansen Mwakazi", link: "https://twitter.com", dateCreated: "21 Mar '19"),
        Article(id: "123456364", politician: "Moses Kuria", title: "Moses Kuria implicated in the Kimwaror Dam Scandal", content: "We will use the requests module to get the HTML code from the page and then navigate through it with the BeautifulSoup package. We will learn to use two commands that will be enough for our task: find_all(element tag, attribute): it allows us to locate any HTML element from a webpage introducing its tag and attributes. This command will locate all the elements of the same type. In order to get only the first one, we can use find() instead. get_text(): once we have located a given element, this command will allow us to extract the text inside. So, at this point, what we need to do is to navigate through the HTML code of our webpage (for example, in Google Chrome we need to enter the webpage, press right click button and go to See source code) and locate the elements we want to scrape. We can simply do this searching with Ctrl+F or Cmd+F once we are seeing the source code. Once we have identified the elements of interest, we will get the HTML code with the requests module and extract those elements with BeautifulSoup.", source: "Nation Digital", author: "Johansen Mwakazi", link: "https://twitter.com", dateCreated: "21 Mar '19"),
        Article(id: "123456365", politician: "Moses Kuria", title: "Moses Kuria implicated in the Kimwaror Dam Scandal", content: "We will use the requests module to get the HTML code from the page and then navigate through it with the BeautifulSoup package. We will learn to use two commands that will be enough for our task: find_all(element tag, attribute): it allows us to locate any HTML element from a webpage introducing its tag and attributes. This command will locate all the elements of the same type. In order to get only the first one, we can use find() instead. get_text(): once we have located a given element, this command will allow us to extract the text inside. So, at this point, what we need to do is to navigate through the HTML code of our webpage (for example, in Google Chrome we need to enter the webpage, press right click button and go to See source code) and locate the elements we want to scrape. We can simply do this searching with Ctrl+F or Cmd+F once we are seeing the source code. Once we have identified the elements of interest, we will get the HTML code with the requests module and extract those elements with BeautifulSoup.", source: "Nation Digital", author: "Johansen Mwakazi", link: "https://twitter.com", dateCreated: "21 Mar '19"),
        Article(id: "123456366", politician: "Moses Kuria", title: "Moses Kuria implicated in the Kimwaror Dam Scandal", content: "We will use the requests module to get the HTML code from the page and then navigate through it with the BeautifulSoup package. We will learn to use two commands that will be enough for our task: find_all(element tag, attribute): it allows us to locate any HTML element from a webpage introducing its tag and attributes. This command will locate all the elements of the same type. In order to get only the first one, we can use find() instead. get_text(): once we have located a given element, this command will allow us to extract the text inside. So, at this point, what we need to do is to navigate through the HTML code of our webpage (for example, in Google Chrome we need to enter the webpage, press right click button and go to See source code) and locate the elements we want to scrape. We can simply do this searching with Ctrl+F or Cmd+F once we are seeing the source code. Once we have identified the elements of interest, we will get the HTML code with the requests module and extract those elements with BeautifulSoup.", source: "Nation Digital", author: "Johansen Mwakazi", link: "https://twitter.com", dateCreated: "21 Mar '19"),
        Article(id: "123456367", politician: "Moses Kuria", title: "Moses Kuria implicated in the Kimwaror Dam Scandal", content: "We will use the requests module to get the HTML code from the page and then navigate through it with the BeautifulSoup package. We will learn to use two commands that will be enough for our task: find_all(element tag, attribute): it allows us to locate any HTML element from a webpage introducing its tag and attributes. This command will locate all the elements of the same type. In order to get only the first one, we can use find() instead. get_text(): once we have located a given element, this command will allow us to extract the text inside. So, at this point, what we need to do is to navigate through the HTML code of our webpage (for example, in Google Chrome we need to enter the webpage, press right click button and go to See source code) and locate the elements we want to scrape. We can simply do this searching with Ctrl+F or Cmd+F once we are seeing the source code. Once we have identified the elements of interest, we will get the HTML code with the requests module and extract those elements with BeautifulSoup.", source: "Nation Digital", author: "Johansen Mwakazi", link: "https://twitter.com", dateCreated: "21 Mar '19")
    ]
}
