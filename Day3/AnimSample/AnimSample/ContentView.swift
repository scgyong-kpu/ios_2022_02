//
//  ContentView.swift
//  AnimSample
//
//  Created by Kiyong Kim on 2022/02/09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Path { path in
                path.move(to: CGPoint(x: 10, y: 0))
                path.addLine(to: CGPoint(x: 10, y: 35))
                path.addLine(to: CGPoint(x: 30, y: 30))
                path.closeSubpath()
            }
            .fill(Color.green)
            .frame(width: 200, height: 100)
            Circle()
                .fill(
                    RadialGradient(gradient: Gradient(colors:[
                        Color.red, Color.yellow, Color.green, Color.blue, Color.purple
                    ]), center: .center, startRadius: 0, endRadius: 300)
                )
            .foregroundColor(Color.red)
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth:8)
                .frame(width:240, height:120)
            Capsule()
                .stroke(lineWidth: 5)
                .foregroundColor(Color.blue)
                .frame(width: 200, height: 60)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
