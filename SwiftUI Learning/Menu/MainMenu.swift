//
//  MainMenu.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 25/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct MainMenu: View {
    @State private var categories: [MenuItem] = [
        .swiftUI,
        .layoutViews
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(categories, id: \.self) { category in
                    NavigationLink(
                        destination: CategoryMenu(category: category)
                    ) {
                        Text(category.title)
                    }
                }
            }.navigationBarTitle(Text("SwiftUI Views Mastery"))
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}

struct CategoryMenu: View {
    var category: MenuItem

    var body: some View {
        List {
            ForEach(category.items, id: \.self) { category in
                NavigationLink(
                    //TODO: Fix this
                    destination: Text(category)
                ) {
                    Text(category)
                }
            }
        }.navigationBarTitle(Text(category.title))
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}
