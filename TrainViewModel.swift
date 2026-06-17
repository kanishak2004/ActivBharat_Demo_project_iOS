//
//  TrainViewModel.swift
//  ActivBharat_Demo
//
//  Created by Codex on 11/04/26.
//

import UIKit

struct TrainHeroCardModel {
    let eyebrow: String
    let title: String
    let subtitle: String
    let ctaTitle: String
}

struct TrainActivityItemModel {
    let title: String
    let subtitle: String
    let imageName: String?
    let symbolName: String
    let highlighted: Bool
}

struct TrainTrainingCardModel {
    let duration: String
    let calories: String
    let focusArea: String
    let featuredActivity: TrainActivityItemModel
    let activityRows: [TrainActivityItemModel]
}

struct TrainGoalCardModel {
    let progressTitle: String
    let progressValue: String
    let progressSubtitle: String
}

final class TrainViewModel {

    let heroCard = TrainHeroCardModel(
        eyebrow: "Daily Activity",
        title: "Runner's Foundation\nPlus Plan",
        subtitle: "28 Days • Beginner Running",
        ctaTitle: "See Plan"
    )

    let trainingCard = TrainTrainingCardModel(
        duration: "1h 20m",
        calories: "500 kcal",
        focusArea: "Strength",
        featuredActivity: TrainActivityItemModel(
            title: "Runner's Foundation Plus Plan",
            subtitle: "Day 1 • 30 mins • 180 kcal",
            imageName: "man-running 1",
            symbolName: "figure.run",
            highlighted: false
        ),
        activityRows: [
            TrainActivityItemModel(
                title: "Interval Run + Light Jog",
                subtitle: "30 mins • 180 kcal",
                imageName: "man-running 1",
                symbolName: "figure.run.circle",
                highlighted: false
            ),
            TrainActivityItemModel(
                title: "Crunches + Long Run",
                subtitle: "20 mins • 140 kcal",
                imageName: "man-running 1",
                symbolName: "flame",
                highlighted: false
            ),
            TrainActivityItemModel(
                title: "Tempo Run + Stretch",
                subtitle: "25 mins • 150 kcal",
                imageName: "man-running 1",
                symbolName: "figure.run",
                highlighted: false
            ),
            TrainActivityItemModel(
                title: "Core Blast + Jog",
                subtitle: "35 mins • 210 kcal",
                imageName: "man-running 1",
                symbolName: "bolt.heart",
                highlighted: false
            ),
            TrainActivityItemModel(
                title: "Recovery Walk",
                subtitle: "15 mins • 90 kcal",
                imageName: "man-running 1",
                symbolName: "flame",
                highlighted: false
            ),
            TrainActivityItemModel(
                title: "Arm Muscle + Tri Muscle Workout",
                subtitle: "33 mins • 210 Kcal",
                imageName: "man-running 1",
                symbolName: "flame",
                highlighted: false)
        ]
    )
    
    let goalCard = TrainGoalCardModel(
        progressTitle: "Steps • 69%",
        progressValue: "3,234",
        progressSubtitle: "Steps / 10,000 Steps"
    )
}
