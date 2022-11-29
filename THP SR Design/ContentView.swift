//
//  ContentView.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 14/11/22.
//

import SwiftUI

struct Login: View {
    
    var a = SideMenu()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}



class SideMenu {
    
    var menuName: String
    init(menuName: String = "menu") {
        self.menuName = menuName
        print("calling init")
    }
    
}


