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
            Image("AppImage")
            Text("テストのアプリです")
            Button("ログイン") {
                
            }
            .modifier(EllipseView(color: .red))
            Button("新規会員登録") {
                
            }
        }
        .padding(.all, 16.0)
    }
}

struct EllipseView: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(color)
            .background(GeometryReader{ geometry -> Text in
                print("******", geometry.size)
                content.clipShape(RoundedRectangle(cornerRadius: geometry.size.height / 2))
                return Text("")
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
