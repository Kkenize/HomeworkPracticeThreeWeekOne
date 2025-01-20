//
//  ContentView.swift
//  HomeworkPracticeThreeWeekOne
//
//  Created by Zhejun Zhang on 1/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var image = ""
    @State private var message = ""
    @State private var int = 1
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.yellow)
                .frame(width: 200, height: 200)
            Text(message)
                .bold()
                .font(.largeTitle)
                .foregroundStyle(.yellow)
            Spacer()
            Button("Let's Go!") {
                if int % 2 == 1 {
                    image = "sun.max"
                    message = "You are awesome!"
                    int += 1
                } else {
                    image = "hand.thumbsup"
                    message = "You are wonderful!"
                    int += 1
                }
            }
            .buttonStyle(.borderedProminent)
            .bold()
            .font(.title2)
            .tint(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
