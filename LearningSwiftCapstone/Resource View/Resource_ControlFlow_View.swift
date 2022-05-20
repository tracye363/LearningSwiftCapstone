//
//  Resource_ControlFlow_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_ControlFlow_View: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "_AERwj9vlOM")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Control Flow")
    }
}

struct Resource_ControlFlow_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_ControlFlow_View()
    }
}
