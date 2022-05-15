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
    func calcCurrentGrade ()-> Double {
        (currentGrade = ((abPoints * 0.2) + (apPoints * 0.3) + (aaPoints * 0.5)))
        return currentGrade
    }
    func calcNewGrade ()-> Double {
        if selectedCat == "Behavior" {newGrade = ((abPoints + newPoints) * 0.2) + (apPoints * 0.3) + (aaPoints * 0.5)}
        else if selectedCat == "Performance" { newGrade = (abPoints * 0.2) + ((apPoints + newPoints) * 0.3) + (aaPoints * 0.5)}
        else if selectedCat == "Achievement" { newGrade = (abPoints * 0.2) + (apPoints * 0.3) + ((aaPoints + newPoints * 0.5))}
         return newGrade
    }
    var body: some View {
        VStack(alignment: .leading) {
            Text("   Grade Calculator   ")
                .fontWeight(.bold)
                .font(.system(size: 35.0))
                .border(Color.blue, width: 5)
                
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
                Button  {
                    calcCurrentGrade()
                } label: {
                    Text ("Current Grade")
                        .fontWeight(.bold)
                }

                Spacer()
                Text("\(currentGrade, specifier:"%.2f")%")
             
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
                Button {
                    calcNewGrade()
                } label: {
                    Text("New Grade")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                }
                Text("\(newGrade, specifier:"%.2f")%")
            } .padding(4)
        }.padding()
        
    }
    
}

struct GradeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        GradeCalculatorView(abPoints: 0.0, apPoints: 0.0, aaPoints: 0.0, newPoints: 0.0, currentGrade: 0.0, newGrade: 0.0)
    }
}
