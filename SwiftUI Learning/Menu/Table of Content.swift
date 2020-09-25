//
//  Table of Content.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 25/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import Foundation

enum MenuItem {
    case swiftUI
    case layoutViews

    var title: String {
        switch self {
        case .swiftUI:
            return "SwiftUI"
        case .layoutViews:
            return "Layout Views"
        }
    }

    var items: [String] {
        switch self {
        case .swiftUI:
            return ["Basic Concepts",
                    "Views and Modifiers",
                    "Vertical Layout Container",
                    "Horizontal Layout Container",
                    "Depth Layout Container",
                    "TODO"
            ]
        case .layoutViews:
            return [
                "VStack",
                "LazyVStack",
                "HStack",
                "LazyHStack",
                "ZStack",
                "LazyZStack"
            ]
        }
    }
}
