//
//  MainMenu.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 25/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(MenuItem.allCases, id: \.self) { category in
                    NavigationLink(
                        destination: CategoryMenu(category: category)
                    ) {
                        Text(category.title)
                    }
                }
            }.navigationBarTitle(Text("Learn SwiftUI"))
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct CategoryMenu: View {
    var category: MenuItem

    var body: some View {
        List {
            ForEach(category.items, id: \.self) { topic in
                NavigationLink(destination: self.category.getView(for: topic)) {
                    Text(topic)
                }
            }
        }.navigationBarTitle(Text(category.title))
    }
}
