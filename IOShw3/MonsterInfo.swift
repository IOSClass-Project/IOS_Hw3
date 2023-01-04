//
//  MonsterInfo.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct MonsterInfo: View {
    var monster: PpMonster
    var body: some View {
        VStack(){
            Group{
                Image(monster.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width:400 ,height:350)
                    .clipped()
                Text(monster.name)
                    .font(Font.system(size: 35))
                Text(monster.description)
                    .font(Font.system(size: 17))
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 5))
            }
        }
    }
}

struct MonsterInfo_Previews: PreviewProvider {
    static var previews: some View {
        MonsterInfo(monster: monsters[0])
    }
}

