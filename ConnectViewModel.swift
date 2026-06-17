//
//  ConnectViewModel.swift
//  ActivBharat_Demo
//
//  Created by Codex on 19/04/26.
//

import UIKit

struct ConnectComposerModel {
    let title: String
    let message: String
    let ctaTitle: String
    let imageName: String
}

struct ConnectPostModel {
    let author: String
    let timeText: String
    let caption: String
    let imageName: String
    let reactions: [String]
}

final class ConnectViewModel {

    let composer = ConnectComposerModel(
        title: "Connect",
        message: "Your progress fuels the crew.\nPost a milestone!",
        ctaTitle: "+ Add Post",
        imageName: "Group 1000001861"
    )

    let posts: [ConnectPostModel] = [
        ConnectPostModel(
            author: "Dragon_Slayer",
            timeText: "5 mins ago",
            caption: "Crushed my best pace today with \n@thebodycoach 💪🔥",
            imageName: "Rectangle 43977",
            reactions: ["❤️ 12", "🔥 5", "💪 16"]
        ),
        ConnectPostModel(
            author: "Dragon_Slayer",
            timeText: "5 mins ago",
            caption: "Recovery day and still got the miles in.",
            imageName: "BeachWorkout",
            reactions: ["❤️ 12", "🔥 5", "💪 16"]
        ),
        ConnectPostModel(
            author: "Dragon_Slayer",
            timeText: "12 mins ago",
            caption: "Quick progress dump before the next session starts.",
            imageName: "Runners",
            reactions: ["❤️ 12", "🔥 5", "💪 16"]
        )
    ]
}
