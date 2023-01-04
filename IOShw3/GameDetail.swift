//
//  GameDetail.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct GameDetail: View {
    var game: GameData
    var body: some View {
        VStack(){
            Group{
                Image(game.generation)
                    .resizable()
                    .scaledToFill()
                    .frame(width:300 ,height:350)
                    .clipped()
                Text(game.name)
                    .font(Font.system(size: 35))
                Text(game.description)
                    .font(Font.system(size: 17))
            }
        }
    }
}

struct GameDetail_Previews: PreviewProvider {
    static var previews: some View {
        GameDetail(game: games[0])
    }
}
