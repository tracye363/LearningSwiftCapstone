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
            Rectangle()
                .foregroundColor(Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea()
            VStack {
                YoutubeView(youtubeID: "fdAz9IFbpqY")
                    .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                .cornerRadius(10)
                
                Text("A single View will not make for an exciting app. What we can do is create multiple Views and place them together inside of another **parent** **View**. This **parent View** can determine how it wants its **children Views** to be arranged.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                
                Text("There are two main types of stacks you will be dealing with, **`VStack`** and **`HStack`**")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                     
                Text("**`VStack`** will arrange all of its children Views vertically.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                     
                Text("**`HStack`** will arrange all of its children Views horizontally")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                
                Text("**`ZStack`** will arrange all of its children Views in depth fashion, with the first child View at the back")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
                    
                Text("VStack and HStack are used quite commonly, however there is a third form of a stack referenced as a ZStack, or a **depth layout stack.** This stack will arrange items in a fashion of depth. Children Views will be inside of a parent ZStack, with the first child view appearing at the very back, with all following views laid out in front of its children.")
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 5.0)
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
