//
//  ContentView.swift
//  Image
//
//  Created by Can Balkaya on 4/14/20.
//  Copyright © 2020 Can Balkaya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 80) {
            Image("TurkishKit")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .opacity(0.9)
                .cornerRadius(40)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 10))
                .shadow(color: .blue, radius: 10)
                .rotationEffect(.degrees(10))

            Image(systemName: "plus.app.fill")
                .font(.system(size: 270))
                .foregroundColor(.red)
                .clipShape(Circle())
                .blur(radius: 2)
                .padding()
                .overlay(Circle().stroke(Color.red, lineWidth: 10).shadow(radius: 10))
                .mask(Circle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
