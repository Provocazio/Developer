//
//  Question.swift
//  AnimalQuiz
//
//  Created by Никита on 22.11.2022.
//

enum ResponseType {
    case single
    case multiply
    case range
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}

extension Question{
    static func getQuestion() -> [Question] {
        return [
            Question(text: "Какую пищу вы предпочитаете?", type: .single, answers: [
                     Answer(text: "Стейк", type: .dog),
                     Answer(text: "Рыба", type: .cat),
                     Answer(text: "Морковь", type: .rabbit),
                     Answer(text: "Кукуруза", type: .turtle)
               ]
            ),
            Question(text: "Что вылюбите делать?", type: .multiply, answers: [
                     Answer(text: "Обниматься", type: .dog),
                     Answer(text: "Спать", type: .cat),
                     Answer(text: "Есть", type: .rabbit),
                     Answer(text: "Плавать", type: .turtle)
               ]
            ),
            Question(text: "Любите ли вы поездки на машине?", type: .range, answers: [
                     Answer(text: "Обожаю", type: .dog),
                     Answer(text: "Обожаю", type: .cat),
                     Answer(text: "Ненавижу", type: .rabbit),
                     Answer(text: "Ненавижу", type: .turtle)
               ]
            )
        ]
    }
}
