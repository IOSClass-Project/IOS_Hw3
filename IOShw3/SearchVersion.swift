//
//  SearchVersion.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct SearchVersion: View {
    @State private var version = ""
    @State private var showAlert = false
    @State private var showSecondPage = false
    @State private var showThirdPage = false
    @State private var year = 2004
    var body: some View {
        VStack{
            VStack{
                TextField("請輸入版本", text: $version)
                .padding()
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 5))
                .padding()
                
                ForEach(0..<games.count) { (index) in
                    if games[index].version == self.version{
                        Button("\(games[index].name)詳細資料"){
                            self.showSecondPage = true
                        }
                        .sheet(isPresented: self.$showSecondPage){
                            GameDetail(game: games[index])
                        }
                        
                        Button("代表魔物: \(monsters[index].name)"){
                            self.showThirdPage = true
                        }
                        .sheet(isPresented: self.$showThirdPage){
                            MonsterInfo(monster: monsters[index])
                        }
                    .padding(10)
                        Button(action: {
                           self.showAlert = true
                        }) {
                           VStack {
                              Text("發售年份\(games[index].year)")
                           }
                        }
                        .alert(isPresented: self.$showAlert) { () -> Alert in
                            let answer = games[index.self].generation
                            return Alert(title: Text(answer))
                        }
                    }
                }
            }
            Form{
                Text("年份搜尋")
                Stepper(value: $year, in: 2004...2019, step: 1) {
                    Image("\(self.year)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 175)
                        .clipped()
                    Text("西元\(self.year)")
                }
            }
        }
    }
}

struct SearchVersion_Previews: PreviewProvider {
    static var previews: some View {
        SearchVersion()
    }
}
