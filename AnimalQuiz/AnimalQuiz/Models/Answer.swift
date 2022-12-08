//
//  Answer.swift
//  AnimalQuiz
//
//  Created by Никита on 22.11.2022.
//


struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: String{
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String{
        switch self {
        case .dog:
            return "Собака"
        case .cat:
            return "Кошка"
        case .rabbit:
            return "Кролик"
        case .turtle:
            return "Черепаха"
        }
    }
}
