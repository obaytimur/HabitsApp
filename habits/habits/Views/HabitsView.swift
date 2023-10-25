//
//  HabitsView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct HabitsView: View {
    @Binding var habits: [DailyHabit]
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
                    
                }) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Habits")
            }
        }
    }
}

struct HabitsView_Previews: PreviewProvider{
    static var previews: some View{
        HabitsView(habits: .constant(DailyHabit.sampleData))
    }
}
