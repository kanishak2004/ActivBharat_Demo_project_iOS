//
//  ExploreViewModel.swift
//  ActivBharat_Demo
//
//  Created by Kanishk thakur on 28/04/26.
//

import Foundation

struct ExploreEventModel {
    let title: String
    let location: String
    let date: String
    let routeImageName: String
    let attendeeImageNames: [String]
    let attendeeCountText: String
}

struct ExploreWorkoutModel {
    let title: String
    let subtitle: String
    let imageName: String
}

struct ExploreArticleModel {
    let title: String
    let subtitle: String
    let imageName: String
}

final class ExploreViewModel {

    let events: [ExploreEventModel] = [
        ExploreEventModel(
            title: "Dilli Half Marathon",
            location: "Pocket 1, Mayur Vihar, Delhi",
            date: "30th July, 2025",
            routeImageName: "Rectangle 43977",
            attendeeImageNames: Array(repeating: "man-running 1", count: 5),
            attendeeCountText: "+45 people already registered"
        ),
        ExploreEventModel(
            title: "Sunrise 10K Challenge",
            location: "Lodhi Garden, New Delhi",
            date: "5th August, 2025",
            routeImageName: "Rectangle 43977",
            attendeeImageNames: Array(repeating: "man-running 1", count: 5),
            attendeeCountText: "+28 people already registered"
        ),
        ExploreEventModel(
            title: "Weekend Recovery Run",
            location: "India Gate, New Delhi",
            date: "12th August, 2025",
            routeImageName: "Rectangle 43977",
            attendeeImageNames: Array(repeating: "man-running 1", count: 5),
            attendeeCountText: "+32 people already registered"
        )
    ]

    let workouts: [ExploreWorkoutModel] = [
        ExploreWorkoutModel(
            title: "Diet Dance Part II For Non-Dancers",
            subtitle: "20 mins • Beginner",
            imageName: "BeachWorkout"
        ),
        ExploreWorkoutModel(
            title: "Full body stretch III for runners",
            subtitle: "20 mins • Intermediate",
            imageName: "Runners"
        ),
        ExploreWorkoutModel(
            title: "Warm up and activate before you run",
            subtitle: "15 mins • Beginner",
            imageName: "BeachWorkout"
        )
    ]

    let featuredArticle = ExploreArticleModel(
        title: "Post-Workout Muscle Recovery: How to Let Your Muscles Heal and Why",
        subtitle: "To become stronger, faster, and fitter, you have to push your body harder. But then you have to recover well too.",
        imageName: "BeachWorkout"
    )

    let readArticles: [ExploreArticleModel] = [
        ExploreArticleModel(
            title: "The Complete Guide to a Mesomorph Body Workout",
            subtitle: "",
            imageName: "Runners"
        ),
        ExploreArticleModel(
            title: "How to Eat Before, During, and After a Run",
            subtitle: "",
            imageName: "BeachWorkout"
        ),
        ExploreArticleModel(
            title: "10-Minute Pregnancy Workout",
            subtitle: "",
            imageName: "Runners"
        ),
        ExploreArticleModel(
            title: "Quick Fixes for Sore Legs",
            subtitle: "",
            imageName: "BeachWorkout"
        )
    ]
}
