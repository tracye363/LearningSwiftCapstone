//
//  Resource_Arrays_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_Arrays_View: View {
    var body: some View {
        VStack {
            Text("Arrays")
                .fontWeight(.bold)
                .font(.system(size: 30.0))
                .padding(.horizontal, 15.0)
                .border(Color.blue, width: 4)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            VStack {
                YoutubeView(youtubeID: "QYz159iqsgY")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
            }
            .padding(10.0)
            Spacer()
        }
    }
}

struct Resource_Arrays_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_Arrays_View()
    }
}
