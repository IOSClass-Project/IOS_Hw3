//
//  MainMonster.swift
//  IOShw3
//
//  Created by blaire on 2019/11/11.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import SwiftUI

struct MainMonster: View {
    @State private var versionYear = Date()
    @State private var scale: CGFloat = 1
    
    let today = Date()
    let startDate = Calendar.current.date(byAdding: .year, value: -2, to: Date())!
    var year: Int {
        Calendar.current.component(.year, from: versionYear)
    }
    
    let dateFormatter: DateFormatter = {
       let dateFormatter = DateFormatter()
       dateFormatter.dateStyle = .medium
       return dateFormatter
    }()
    
    var body: some View {
        GeometryReader { geometry in
             VStack {
                ForEach(0..<games.count) { (index) in
                    if games[index].year == String(self.year){
                        Text(games[index].name)
                            .font(Font.system(size: 30))
                        Image("monster\(self.year)")
                             .resizable()
                             .scaledToFit()
                             .frame(width: 380, height: 280)
                             .clipped()
                            .scaleEffect(self.scale)
                        Text(games[index].description)
                    }
                }
                Slider(value: self.$scale, in: 0.5...1.5)
                .accentColor(.orange)
                VStack {
                    DatePicker("事件", selection: self.$versionYear, displayedComponents: .date)
                }
            }
        }
    }
}

struct MainMonster_Previews: PreviewProvider {
    static var previews: some View {
        MainMonster()
    }
}
