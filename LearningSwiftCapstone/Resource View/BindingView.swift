//
//  BindingView.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/19/22.
//

import SwiftUI

struct BindingView: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "PRx7g6I51k4")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("@Binding")
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
