//
//  newHabitSheet.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct newHabitSheet: View {
    @State private var newHabit = DailyHabit.emptyHabit
    @Binding var habits: [DailyHabit]
    @Binding var isPresentingNewHabitView: Bool
    
    var body: some View {
        NavigationStack{
            EditView(habit: $newHabit)
                .toolbar{
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss"){
                            isPresentingNewHabitView = false
                        }
                    }
                }
                .toolbar{
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add"){
                            habits.append(newHabit)
                            isPresentingNewHabitView = false
                        }
                    }
                }
        }
    }
}

struct newHabitSheet_Previews: PreviewProvider{
    static var previews: some View{
        newHabitSheet(habits: .constant(DailyHabit.sampleData), isPresentingNewHabitView: .constant(true))
    }
}
