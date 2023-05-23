//
//  SwiftUIView.swift
//  GameWidgetExtension
//
//  Created by Jack Cardinal on 5/16/23.
//

import SwiftUI
import WidgetKit

struct LiveActivityView: View {
    
    let context: ActivityViewContext<GameAttributes>
    
    var body: some View {
        ZStack {
            Image("activity-background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .overlay {
                    ContainerRelativeShape()
                        .fill(.black.opacity(0.3).gradient)
                }
            VStack(spacing: 12){
                HStack {
                    
                    //attributes is static data
                    Image(context.attributes.homeTeam)
                    .teamLogoModifier(frame: 60)
                    
                    //state is dynamic data
                    Text("\(context.state.gameState.homeScore)")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white.opacity(0.8))
                    
                    Spacer()
                    
                    Text("\(context.state.gameState.awayScore)")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.black.opacity(0.8))
                    
                    Image(context.attributes.awayTeam)
                    .teamLogoModifier(frame: 60)

                }
                HStack {
                    Image(context.state.gameState.winningTeamName)
                        .teamLogoModifier(frame:28)
                    
                    Text(context.state.gameState.lastAction)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(.white.opacity(0.9))
                }
            }
            .padding()
        }
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        LiveActivityView()
//            .previewContext(WidgetPreviewContext(family: .systemMedium))
//    }
//}
