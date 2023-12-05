//
//  TabBar.swift
//  E-Commerce
//
//  Created by Michael Hany on 05/12/2023.
//

import SwiftUI

struct TabBar: View {
    
    @Binding var index : Int
    
    var tab : [Tab] = [.Home, .Cart, .Profile, .Notification, .Search]
    
    var body: some View {
        HStack {
            ForEach(0..<tab.count){item in
                Button(action: {
                    index = item
                }){
                    VStack{
                        if self.index != item {
                            Image(systemName: tab[item].rawValue).foregroundColor(.black)
                        }
                        else {
                            Image(systemName: tab[item].rawValue)
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.red)
                                .padding()
                                .background(Color.white)
                                .clipShape(Circle())
                                .offset(y: -35)
                                .padding(.bottom, -30)
                            
                            Text(tab[item].Tabname)
                                .foregroundColor(Color.white.opacity(0.7))
                        }
                    }
                }
                if item != 4{
                    Spacer(minLength: 15)
                }
            }
        }
        .padding(.vertical, -5)
        .padding(.horizontal, 25)
        .background(Color("GoldPrimary"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(index: .constant(0))
    }
}
