//
//  habitsApp.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

@main
struct habitsApp: App {
    @State private var habit: [DailyHabit] = []
    var body: some Scene {
        WindowGroup {
            HabitsView(habits: $habit)
        }
    }
}
