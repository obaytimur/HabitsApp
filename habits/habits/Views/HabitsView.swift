//
//  HabitsView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct HabitsView: View {
    @Binding var habits: [DailyHabit]
    @Environment(\.scenePhase) private var scenePhase
    @State private var isPresentingNewHabitSheet = false
    @State private var isEditButtonPressed = false
    var body: some View {
        NavigationStack{
            List($habits) {$habit in
                NavigationLink(destination: DetailView(habit: $habit)){
                    cardView(habit: habit)
                        .swipeActions {
                            Button(role: .destructive){
                                print("Delete Item")
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        }
                        .swipeActions(edge: .leading){
                            NavigationLink(destination: EditView(habit: $habit)){
                                Button{
                                    
                                } label: {
                                    Label("Edit", systemImage: "ellipsis")
                                        .symbolVariant(.circle)
                                }
                                .tint(.accentColor)
                            }
                        }
                }
                .listRowSeparator(.hidden)
                .listRowBackground(
                RoundedRectangle(cornerRadius: 5)
                    .padding(EdgeInsets(
                    top: 5, leading: 10, bottom: 5, trailing: 10))
                    .foregroundColor(habit.theme.mainColor)
                )
            }
            .navigationTitle("Daily Habits")
            .toolbar{
                Button(action: {
                    isPresentingNewHabitSheet = true
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Habits")
            }
        }
        .sheet(isPresented: $isPresentingNewHabitSheet) {
            newHabitSheet(habits: $habits, isPresentingNewHabitView: $isPresentingNewHabitSheet)
        }
    }
}

struct HabitsView_Previews: PreviewProvider{
    static var previews: some View{
        HabitsView(habits: .constant(DailyHabit.sampleData))
    }
}
