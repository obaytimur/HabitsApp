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
    var body: some View {
        NavigationStack{
            List($habits) {$habit in
                NavigationLink(destination: DetailView(habit: $habit)){
                    cardView(habit: habit)
                }
                .listRowBackground(habit.theme.mainColor)
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
