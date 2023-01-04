//
//  ContentView.swift
//  IOS_Hw3
//
//  Created by blaire on 2019/11/10.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var showimg = false
    @State private var selectIndex = 0;
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Text(games[selectIndex].name)
                        .font(.largeTitle)
                        .foregroundColor(.red)
                    
                    VStack{
                        if showimg {
                            NavigationLink(destination: GameDetail(game: games[selectIndex])) {
                                Image(games[selectIndex].generation)
                               .resizable()
                               .scaledToFill()
                               .frame(width: 380, height: 420)
                               .clipped()
                              .animation(Animation.linear(duration: 1).repeatCount(1, autoreverses: false))
                            }
                        } else {
                        }
                         Toggle("顯示圖片", isOn: $showimg)
                    }
                    
                    Picker(selection: $selectIndex, label: Text("年份").foregroundColor(.orange)) {
                      ForEach(0..<games.count) { (index) in
                            Text(games[index].year)
                                .foregroundColor(.blue)
                        }
                    }.pickerStyle(WheelPickerStyle())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
