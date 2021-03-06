//
//  MenuView.swift
//  iDine
//
//  Created by dmason on 3/15/20.
//  Copyright © 2020 United Fire Group. All rights reserved.
//

import SwiftUI

struct MenuView: View
{
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View
    {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            ItemRow(item: item)
                        }
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
