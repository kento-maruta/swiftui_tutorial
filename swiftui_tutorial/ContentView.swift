//
//  ContentView.swift
//  swiftui_tutorial
//
//  Created by kento maruta on 2020/01/20.
//  Copyright © 2020 kento maruta. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!22")
                .font(.largeTitle)
            HStack {
                Text("テストです")
                    .font(.subheadline)
                Spacer()
                Text("横に並ぶよ")
            }
        }
        .padding(.all, 16.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
