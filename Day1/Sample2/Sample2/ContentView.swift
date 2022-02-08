//
//  ContentView.swift
//  Sample2
//
//  Created by Kiyong Kim on 2022/02/07.
//

import SwiftUI

struct HelloMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(20.0)
            .background(Color.blue)
            .border(Color.red, width: 8.0)
    }
}
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .bold()
                .modifier(HelloMod())
            Text("second!")
                .modifier(HelloMod())
            Image(systemName: "aqi.high")
                .resizable()
                .frame(width: 100, height: 100)
            ZStack {
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width: 80, height: 80)
                Text("iOS Programming")
                    .background(Color.yellow)
            }
//            inclusive,exclusive
//            [30,40)
//            int start = 30;
//            int end = 39;
//            int size = end - start + 1;
//
//            [start, end)
//
//             size = end - start
            
//int a;
//int a();
            
            Text("by scgyong")
                .shadow(color: .black, radius: 5, x: 4, y: 5)
            HStack {
                Spacer()
                Text("Hello")
                    .padding()
                    .background(Color.purple)
                    .font(.largeTitle)
                Spacer()
                Text("World")
                    .fontWeight(.heavy)
                    .font(.custom("Copperplate", size: 40))
                    .foregroundColor(.brown)
                Spacer(minLength: 50)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
