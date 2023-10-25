//
//  DailyHabit.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import Foundation

struct DailyHabit: Identifiable, Codable {
    let id: UUID
    var name: String
    var desc: String
    var length: Int
    var theme: Theme
    
    init(id: UUID = UUID(), name: String, desc: String, length: Int, theme: Theme) {
        self.id = id
        self.name = name
        self.desc = desc
        self.length = length
        self.theme = theme
    }
}

extension DailyHabit {
    static var emptyHabit: DailyHabit {
        DailyHabit(name: "", desc: "", length: 0, theme: .sky)
    }
}

extension DailyHabit {
    static let sampleData: [DailyHabit] =
    [
        DailyHabit(name: "100 DoS",
                   desc: "Do the next day in the 100 days of swift challange",
                   length: 60,
                   theme: .bubblegum),
        DailyHabit(name: "Do Project",
                   desc: "Contribute at least four commits to projects",
                   length: 120,
                   theme: .buttercup),
        DailyHabit(name: "Do Sports",
                   desc: "Do at least 1 hour of sports",
                   length: 60,
                   theme: .indigo),
        DailyHabit(name: "Make Bed",
                   desc: "Who can be successfull if they do not even make their bed",
                   length: 2,
                   theme: .orange)
    ]
}
