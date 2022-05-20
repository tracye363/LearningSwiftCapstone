//
//  ImagesView.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/19/22.
//

import SwiftUI

struct ImagesView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "leGCnjdlgmo")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Images")
    }
}

struct ImagesView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesView()
    }
}
