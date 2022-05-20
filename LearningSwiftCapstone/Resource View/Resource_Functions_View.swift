//
//  Resource_Functions_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_Functions_View: View {
    var body: some View {
        VStack {
            Text("Control Flow")
                .fontWeight(.bold)
                .font(.system(size: 30.0))
                .padding(.horizontal, 15.0)
                .border(Color.blue, width: 4)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            VStack {
                YoutubeView(youtubeID: "wimSZRxQJ2w")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }
    }
}

struct Resource_Functions_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_Functions_View()
    }
}
