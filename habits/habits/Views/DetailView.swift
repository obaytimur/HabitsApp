//
//  DetailView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var habit: DailyHabit
    @State private var isEditViewPreviewed = false
    
    var body: some View {
        List {
            Section(header: Text("Habit Info")){
                Text(habit.desc)
                HStack{
                    Text("Colour: ")
                    Spacer()
                    Text(habit.theme.name)
                }                
                Text("Icon: \(Image(systemName: habit.icon))")
            }
            .foregroundColor(habit.theme.mainColor)
        }
        .navigationTitle(habit.name)
        .toolbar{
            Button("Edit"){
                isEditViewPreviewed = true
            }
        }
        .sheet(isPresented: $isEditViewPreviewed) {
            NavigationStack{
                EditView(habit: $habit)
                    .toolbar{
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Dismiss"){
                                isEditViewPreviewed = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done"){
                                isEditViewPreviewed = false
                            }
                        }
                    }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            DetailView(habit: .constant(DailyHabit.sampleData[0]))
        }
    }
}
