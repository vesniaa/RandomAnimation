//
//  Animation.swift
//  RandomAnimation
//
//  Created by Евгения Аникина on 06.04.2022.
//

struct Animation {
    
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "shake",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "spring",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}
