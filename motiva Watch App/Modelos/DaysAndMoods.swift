//
//  DaysAndMoods.swift
//  motiva Watch App
//
//  Created by Jpsmor on 04/12/22.
//

import Foundation

struct daysAndMoods : Identifiable {
    var id = UUID()
    
    var mood : DateMood
    var date : String

    init(id: UUID = UUID(), mood: DateMood, date: String) {
        self.id = id
        self.mood = mood
        self.date = date
    }
}

class DateMood {
    @Published var value : Int = 0
}

var daysHumors = [daysAndMoods]()
