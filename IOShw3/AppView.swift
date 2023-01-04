//
//  AppView.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            SearchVersion().tabItem {
                Image(systemName: "music.house.fill")
                Text("搜尋版本")
            }
            ContentView().tabItem {
                Image(systemName: "info.circle.fill")
                Text("版本內容")
            }
           MainMonster().tabItem {
               Image(systemName: "video.fill")
               Text("發展史")
           }
        }.accentColor(.green)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
