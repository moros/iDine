//
//  ContentView.swift
//  iDine
//
//  Created by dmason on 3/12/20.
//  Copyright © 2020 United Fire Group. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        TabView {
            MenuView().tabItem {
                Image(systemName: "list.dash")
                Text("Menu")
            }
            
            OrderView().tabItem {
                Image(systemName: "square.and.pencil")
                Text("Order")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static let order = Order()
    static var previews: some View {
        ContentView().environmentObject(order)
    }
}
