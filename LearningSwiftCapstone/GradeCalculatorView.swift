//
//  GradeCalculatorView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/11/22.
//

import SwiftUI

struct GradeCalculatorView: View {
    @State var abPoints: Double
    @State var apPoints: Double
    @State var aaPoints: Double
    @State var currentGrade: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Grade Calculator")
                .font(.largeTitle)
                
            HStack {
                Text("Categories")
                    .fontWeight(.bold)
                Spacer()
                Text("Total Points")
                    .fontWeight(.bold)
            }
            HStack {
                Text("Academic Behavior")
                    .fontWeight(.bold)
                Spacer()
                Text("\(abPoints, specifier:"%.2f")")
            }
            HStack {
                Text("Academic Performance")
                    .fontWeight(.bold)
                Spacer()
                Text("\(apPoints, specifier:"%.2f")")
            }
            HStack {
                Text("Academic Achievement")
                    .fontWeight(.bold)
                Spacer()
                Text("\(aaPoints, specifier:"%.2f")")
            }
            HStack {
                Text ("Current Grade")
                    .fontWeight(.bold)
                Spacer()
                Text(currentGrade)
             
            }
        }.padding()
    }
    
}

struct GradeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        GradeCalculatorView(abPoints: 0.0, apPoints: 0.0, aaPoints: 0.0, currentGrade: "0")
    }
}
