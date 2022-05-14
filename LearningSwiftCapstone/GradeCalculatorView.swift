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
    @State var newPoints: Double
    @State var currentGrade: Double
    @State var newGrade: Double
    var gradeCategories = ["Behavior", "Performance", "Achievemen"]
    @State var selectedCat = "Academic Behavior"
    //test
    var body: some View {
        VStack(alignment: .leading) {
            Text("Grade Calculator")
                .font(.largeTitle.bold())
                .foregroundColor(Color.blue)
            HStack {
                Text("Categories")
                    .fontWeight(.bold)
                Spacer()
                Text("Total Points")
                    .fontWeight(.bold)
            } .padding(3)
            HStack {
                Text("Academic Behavior")
                    .fontWeight(.bold)
                
                TextField("Enter your score", value: $abPoints, format: .number)
                            .textFieldStyle(.roundedBorder)
            }.padding(4)
            HStack {
                Text("Academic Performance")
                    .fontWeight(.bold)
                Spacer()
                TextField("Enter your score", value: $apPoints, format: .number)
                                .textFieldStyle(.roundedBorder)
                                .padding()
            }.padding(4)
            HStack {
                Text("Academic Achievement")
                    .fontWeight(.bold)
                Spacer()
                TextField("Enter your score", value: $aaPoints, format: .number)
                                .textFieldStyle(.roundedBorder)
                                .padding()
            }.padding(4)
            HStack {
                Text ("Current Grade")
                    .fontWeight(.bold)
                Spacer()
                Text("\(currentGrade)")
             
            }
        .padding()
            Picker("Choose category for new score", selection: $selectedCat) {
                            ForEach(gradeCategories, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .padding(4)
            HStack {
                Text("Enter Points")
                    .fontWeight(.bold)
                TextField("", value: $newPoints, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .padding()

            }.padding(4)
            HStack {
                Text("New Grade")
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
                Text("\(newGrade)")
            } .padding(4)
        }
        
    }
    
}

struct GradeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        GradeCalculatorView(abPoints: 0.0, apPoints: 0.0, aaPoints: 0.0, newPoints: 0.0, currentGrade: 0.0, newGrade: 0.0)
    }
}
