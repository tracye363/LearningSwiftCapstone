//
//  Resource_VariablesConstantsTypes_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_VariablesConstantsTypes_View: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(red: 0.635, green: 0.893, blue: 0.72))
                .ignoresSafeArea()
                VStack {
                    
                    YoutubeView(youtubeID: "F3XHtViALPw")
                        .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.3)
                        .cornerRadius(10)
                    
                    Text("A computer must remember certain things for a game to work properly. Consider a game where a prospector is looking to collect gold coins. However, every once in awhile a tumbleweed will come into his path and he will either need to jump over it or lose a life.  He is given 3 lives to start the game.  Each time he hits a coin, he collects the coin and his score goes up by 1.")
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 5.0)
                    
                    Text("What things does the game need to remember? The number of coins collected (score) as well as how many lives are remaining.  The game might also identify other things such as the position of the prospector in the display, or how many coins are remaining in the game to collect etc.")
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 5.0)
                    
                    Text("Each of these things that needs to be remembered can be viewed as a **box.** Every box may contain something and is given a name. We give each box a name so we can distinguish one box from another box. In our analogy, the box represents a variable and the value of the variable is what is put inside the box. We say the box contains a value.")
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 5.0)
                    
                    Text("A box is the variable.  Box name is the variable name. Box value is the variable value.")
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 5.0)
                }
            .padding(10.0)
            Spacer()
        }.navigationBarTitle("Variables and Constants")
    }
}

struct Resource_VariablesConstantsTypes_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_VariablesConstantsTypes_View()
    }
}
