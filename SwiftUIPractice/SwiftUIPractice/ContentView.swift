//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by shine on 2019/9/22.
//  Copyright © 2019 Shine. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack
            {
                Text("Life is short , Dreams Bigger")
                    .foregroundColor(.red)
                    .font(.title)
                    .shadow(radius: 20)
                    .padding()
                
                Text("Pracetice Swift UI")
                Image("develop")
                .resizable()
                .scaledToFit()
                Image(systemName: "h.circle")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
