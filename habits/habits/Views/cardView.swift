//
//  cardView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct cardView: View {
    let habit: DailyHabit
    var body: some View {
        VStack(alignment: .leading) {
            Text(habit.name)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label(habit.desc, systemImage: "\(habit.icon)")
                    .accessibilityLabel(habit.desc)
                Spacer()
                Label("\(habit.length)", systemImage: "clock")
                    .accessibilityLabel("Estimated Time \(habit.length) minutes")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(habit.theme.accentColor)
    }
}

struct cardView_Previews: PreviewProvider {
    static var habit = DailyHabit.sampleData[0]
    static var previews: some View{
        cardView(habit: habit)
            .background(habit.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
