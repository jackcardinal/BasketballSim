//
//  GameLiveActivity.swift
//  GameWidget
//
//  Created by Jack Cardinal on 5/15/23.
//

import ActivityKit
import WidgetKit
import SwiftUI


struct GameLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: GameAttributes.self) { context in
            // Lock screen/banner UI goes here
            LiveActivityView(context: context)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    HStack {
                        Image(context.attributes.homeTeam)
                            .teamLogoModifier(frame: 48)
                        
                        Text("\(context.state.gameState.homeScore)")
                            .font(.title)
                        .fontWeight(.semibold)
                    }
                }
                DynamicIslandExpandedRegion(.trailing) {
                    HStack {
                        Text("\(context.state.gameState.awayScore)")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        Image(context.attributes.awayTeam)
                            .teamLogoModifier(frame: 48)
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        Image(context.state.gameState.scoringTeamName)
                            .teamLogoModifier(frame: 20)
                        
                        Text(context.state.gameState.lastAction)

                    }
                }
                DynamicIslandExpandedRegion(.center) {
                    Text("5:24 3Q")
                    // more content
                }
            } compactLeading: {
                HStack {
                    Image(context.attributes.homeTeam)
                        .teamLogoModifier()
                    
                    Text("\(context.state.gameState.homeScore)")
                        .fontWeight(.semibold)
                }

            } compactTrailing: {
                HStack {
                    Text("\(context.state.gameState.awayScore)")
                        .fontWeight(.semibold)
                    
                    
                    Image(context.attributes.awayTeam)
                        .teamLogoModifier()
                }

            } minimal: {
                Text("Min")
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

//struct GameLiveActivity_Previews: PreviewProvider {
//    static let attributes = GameAttributes(name: "Me")
//    static let contentState = GameAttributes.ContentState(value: 3)
//
//    static var previews: some View {
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.compact))
//            .previewDisplayName("Island Compact")
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.expanded))
//            .previewDisplayName("Island Expanded")
//        attributes
//            .previewContext(contentState, viewKind: .dynamicIsland(.minimal))
//            .previewDisplayName("Minimal")
//        attributes
//            .previewContext(contentState, viewKind: .content)
//            .previewDisplayName("Notification")
//    }
//}
