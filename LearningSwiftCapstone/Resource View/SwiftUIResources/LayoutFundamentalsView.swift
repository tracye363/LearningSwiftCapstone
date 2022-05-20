//
//  LayoutFundamentalsView.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/18/22.
//

import SwiftUI

struct LayoutFundamentalsView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "fdAz9IFbpqY")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Layout Fundamentals")
    }
}

struct LayoutFundamentalsView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutFundamentalsView()
    }
}
