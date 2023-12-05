//
//  ContentView.swift
//  E-Commerce
//
//  Created by Michael Hany on 27/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabBarItem = 0
    
    var body: some View {
        VStack{
            Spacer()
            
            TabBar(index: $tabBarItem)
        }
        .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
