//
//  DetailView.swift
//  habits
//
//  Created by Oğulcan Baytimur on 25/10/2023.
//

import SwiftUI

struct DetailView: View {
    @Binding var habit: DailyHabit
    
    var body: some View {
        List {
            
        }
        .navigationTitle(habit.name)
        .toolbar{
            Button("Edit"){
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View{
        NavigationStack{
            DetailView(habit: .constant(DailyHabit.sampleData[0]))
        }
    }
}
