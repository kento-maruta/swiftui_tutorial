//
//  ContentView.swift
//  swiftui_tutorial
//
//  Created by kento maruta on 2020/01/20.
//  Copyright © 2020 kento maruta. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowAlert = false
    var body: some View {
        VStack {
            Image("AppImage")
            Text("テストのアプリです")
            Button("ログイン") {
                self.isShowAlert.toggle()
            }
            .alert(isPresented: $isShowAlert, content: {
                Alert(title: Text("おしました!"))
            })
            .modifier(EllipseView(color: .red))
            Button("新規会員登録") {
                
            }
            Text("")
            .modifier(BorderView())
        }
        .padding(.all, 16.0)
    }
}

struct EllipseView: ViewModifier {
    var color: Color
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .background(color)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct BorderView: ViewModifier {
    var color: Color = .green
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width, height: 1, alignment: .center)
        .background(color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
