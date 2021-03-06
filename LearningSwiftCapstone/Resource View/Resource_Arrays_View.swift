//
//  Resource_Arrays_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_Arrays_View: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "QYz159iqsgY")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Arrays")
    }
}

struct Resource_Arrays_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_Arrays_View()
    }
}
