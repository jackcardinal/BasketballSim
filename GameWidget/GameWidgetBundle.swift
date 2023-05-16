//
//  GameWidgetBundle.swift
//  GameWidget
//
//  Created by Jack Cardinal on 5/15/23.
//

import WidgetKit
import SwiftUI

@main
struct GameWidgetBundle: WidgetBundle {
    var body: some Widget {
        GameWidget()
        if #available(iOS 16.1, *) {
            GameLiveActivity()
        }
    }
}
