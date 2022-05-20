//
//  YouTubeVideo.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/19/22.
//

import SwiftUI
import WebKit

struct YoutubeView: UIViewRepresentable {
    
    let youtubeID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(youtubeID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
