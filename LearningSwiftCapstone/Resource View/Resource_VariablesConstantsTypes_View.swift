//
//  Resource_VariablesConstantsTypes_View.swift
//  LearningSwiftCapstone
//
//  Created by Julian Bautista on 5/14/22.
//

import SwiftUI

struct Resource_VariablesConstantsTypes_View: View {
    var body: some View {
        
        VStack {
            Text("Variables and Constants")
                .fontWeight(.bold)
                .font(.system(size: 30.0))
                .padding(.horizontal, 15.0)
                .border(Color.blue, width: 4)
                .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct Resource_VariablesConstantsTypes_View_Previews: PreviewProvider {
    static var previews: some View {
        Resource_VariablesConstantsTypes_View()
    }
}
