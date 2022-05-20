//
//  GradeViewNew.swift
//  LearningSwiftCapstone
//
//  Created by Tracy Estes on 5/17/22.
//

import SwiftUI

struct GradeViewNew: View {
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
    var gradeCategories = ["Behavior", "Performance", "Achievement"]
        @State var selectedCat = "Academic Behavior"
    func calcCurrentGrade ()-> Double {
        currentGrade = ((((abPoints/abTotalPoints) * 100) * 0.2) + (((apPoints/apTotalPoints) * 100) * 0.3) + (((aaPoints/aaTotalPoints) * 100) * 0.5))
        return currentGrade
    }
    func calcNewGrade ()-> Double {
        if selectedCat == "Behavior"{
        newGrade = (((((abPoints + newPoints)/(abTotalPoints + newTotalPoints)) * 100) * 0.2) + (((apPoints/apTotalPoints) * 100) * 0.3) + (((aaPoints/aaTotalPoints) * 100) * 0.5))
        } else if selectedCat == "Performance" {
            newGrade = (((((apPoints + newPoints)/(apTotalPoints + newTotalPoints)) * 100) * 0.3) + (((abPoints/abTotalPoints) * 100) * 0.2) + (((aaPoints/aaTotalPoints) * 100) * 0.5))
        } else if selectedCat == "Achievement" {
            newGrade = (((((aaPoints + newPoints)/(aaTotalPoints + newTotalPoints)) * 100) * 0.5) + (((abPoints/abTotalPoints) * 100) * 0.2) + (((abPoints/abTotalPoints) * 100) * 0.3))
        }
        return newGrade
    }


    var body: some View {
        ZStack {
            Rectangle()
                Color.mint
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("Categories")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                    Spacer()
                    Text("Earned Points")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                    Spacer()
                    Text("Possible Points")
                        .font(.system(size: 15.0))
                        .fontWeight(.bold)
                        .underline()
                }
                HStack {
                    Text("Behavior")
                    Spacer()
                    TextField("Points", value: $abPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $abTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                HStack {
                    Text("Performance")
                    Spacer()
                    TextField("Points", value: $apPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $apTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                }
                HStack {
                    Text("Achievement")
                    Spacer()
                    TextField("Points", value: $aaPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("Points", value: $aaTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
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
                Spacer()
                
                Picker("Choose category for new score", selection: $selectedCat) {
                    ForEach(gradeCategories, id: \.self) { Text($0)
                    }
                        }
                    .pickerStyle(.segmented)
                HStack {
                    Text("Enter Points")
                        .fontWeight(.bold)
                    Spacer()
                    TextField("", value: $newPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    Spacer()
                    TextField("", value: $newTotalPoints, format: .number)
                        .textFieldStyle(.roundedBorder)
                    }
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
                    }
                Spacer()
                    .navigationBarTitle("Grade Calculator")
            }.padding()
        }
    }
       
}

struct GradeViewNew_Previews: PreviewProvider {
    static var previews: some View {
        GradeViewNew(abPoints: 0.0, abTotalPoints: 0.0, apPoints: 0.0, apTotalPoints: 0.0, aaPoints: 0.0, aaTotalPoints: 0.0, newPoints: 0.0, newTotalPoints: 0.0, currentGrade: 0.0, newGrade: 0.0)
    }
}
