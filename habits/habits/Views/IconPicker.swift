//
//  IconPicker.swift
//  habits
//
//  Created by Oğulcan Baytimur on 30/10/2023.
//

import SwiftUI
import SymbolPicker

struct IconPicker: View {
    @Binding var habit: DailyHabit
    var body: some View {
        SymbolPicker(symbol: $habit.icon)
    }
}

struct IconPicker_Previews: PreviewProvider{
    static var previews: some View{
        IconPicker(habit: .constant(DailyHabit.sampleData[0]))
    }
}
