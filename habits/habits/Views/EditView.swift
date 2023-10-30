//
//  EditView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 26/10/2023.
//

import SwiftUI
import SymbolPicker

struct EditView: View {
    @Binding var habit: DailyHabit
    @State private var iconPickerPresented = false
    
    var body: some View {
        Form{
            Section(header: Text("Habit Info")) {
                TextField("Name", text: $habit.name)
                TextField("Description", text: $habit.desc)
                ThemePicker(selection: $habit.theme)
                NavigationLink("Habit's Icon: \(Image(systemName: habit.icon))", destination: IconPicker(habit: $habit))
            }
        }
    }
}

struct EditView_Previews: PreviewProvider{
    static var previews: some View{
        EditView(habit: .constant(DailyHabit.sampleData[0]))
    }
}
