//
//  EditView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 26/10/2023.
//

import SwiftUI

struct EditView: View {
    @Binding var habit: DailyHabit
    var body: some View {
        Form{
            Section(header: Text("Habit Info")) {
                TextField("Name", text: $habit.name)
                TextField("Description", text: $habit.desc)
            }
        }
    }
}

struct EditView_Previews: PreviewProvider{
    static var previews: some View{
        EditView(habit: .constant(DailyHabit.sampleData[0]))
    }
}
