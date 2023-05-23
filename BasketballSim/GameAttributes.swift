//
//  GameAttributes.swift
//  BasketballSim
//
//  Created by Jack Cardinal on 5/22/23.
//

import Foundation
import ActivityKit


struct GameAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var gameState: GameState
    }
    // Fixed non-changing properties about your activity go here!
    var homeTeam: String
    var awayTeam: String
    var lastAction: String
}
