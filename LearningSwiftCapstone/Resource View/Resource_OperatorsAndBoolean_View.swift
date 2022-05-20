//
//  Resource_OperatorsAndBoolean_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_OperatorsAndBoolean_View: View {
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "1jgtjzTWFn8")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Operators and Booleans")
    }
}

struct Resource_OperatorsAndBoolean_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_OperatorsAndBoolean_View()
    }
}
