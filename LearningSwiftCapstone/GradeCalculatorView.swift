//
//  GradeCalculatorView.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/11/22.
//

import SwiftUI

struct GradeCalculatorView: View {
    
    @State var abPoints: Double
    @State var abTotalPoints: Double
    @State var apPoints: Double
    @State var apTotalPoints: Double
    @State var aaPoints: Double
    @State var aaTotalPoints: Double
    @State var newPoints: Double
    @State var newTotalPoints: Double
    @State var currentGrade: Double
    @State var newGrade: Double
    
    var gradeCategories = ["Behavior", "Performance", "Achievemen"]
    @State var selectedCat = "Academic Behavior"
    func calcCurrentGrade ()-> Double {
        currentGrade = (((abPoints/abTotalPoints) * 0.2) + ((apPoints/_apTotalPoints) * 0.3) + ((aaPoints/aaTotalPoints) * 0.5))
        return currentGrade
    }
    func calcNewGrade ()-> Double {
        if selectedCat == "Behavior" {newGrade = (((abPoints + newPoints)/(abTotalPoints + newTotalPoints)) * 0.2) + ((apPoints/apTotalPoints + newTotalPoints) * 0.3) + ((aaPoints/aaTotalPoints + newTotalPoints) * 0.5)}
        else if selectedCat == "Performance" { newGrade = (abPoints * 0.2) + ((apPoints + newPoints) * 0.3) + (aaPoints * 0.5)}
        else if selectedCat == "Achievement" { newGrade = (abPoints * 0.2) + (apPoints * 0.3) + ((aaPoints + newPoints * 0.5))}
         return newGrade
    }
    var body: some View {
        VStack{
            HStack {
                VStack {
                    Text("Categories")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                    Spacer()
                    Text("Behavior")
                       
                    Spacer()
                    Text("Performance")
                        
                    Spacer()
                    Text("Achievement")
                        
                }

                VStack {
                    Text("Earned Points")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                    Spacer()
                    TextField("Points", value: $abPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $apPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $aaPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                }
                VStack {
                    Text("Possible Points")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                    TextField("Points", value: $abTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $apTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $aaTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                }
            }
            HStack {
                Button  {
                    calcCurrentGrade()
                } label: {
                    Text ("Current Grade")
                        .font(.system(size: 25.0))
                        .fontWeight(.bold)
                }

                Spacer()
                Text("\(currentGrade, specifier:"%.2f")%")
                    .font(.system(size: 25.0))
             
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
                Spacer()
                TextField("", value: $newPoints, format: .number)
                    .textFieldStyle(.roundedBorder)
                Spacer()
                TextField("", value: $newTotalPoints, format: .number)
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
                        .font(.system(size: 25.0))
                }
                Spacer()
                Text("\(newGrade, specifier:"%.2f")%")
                    .font(.system(size: 25.0))
            } .padding(4)

                .navigationBarTitle(Text("Grade Calculator"), displayMode: .inline)
        }
        
    }
}

struct GradeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        GradeCalculatorView(abPoints: 0.0, abTotalPoints: 0, apPoints: 0.0, apTotalPoints: 0, aaPoints: 0.0, aaTotalPoints:0, newPoints: 0.0, currentGrade: 0.0, newGrade: 0.0)
    }
}
