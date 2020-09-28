//
//  Table of Content.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 25/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import Foundation
import SwiftUI

enum MenuItem: CaseIterable {
    case swiftUI
    case layoutViews

    var title: String {
        switch self {
        case .swiftUI:
            return "Basic Concepts"
        case .layoutViews:
            return "Layout Views"
        }
    }

    var items: [String] {
        switch self {
        case .swiftUI:
            return ["Views and Modifiers",
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

    var detailViews: [String: AnyView] {
        switch self {
        case .swiftUI:
            return ["Views and Modifiers": AnyView(ViewsAndModifiers()),
                    "Vertical Layout Container": AnyView(VerticalLayoutContainer()),
                    "Horizontal Layout Container": AnyView(HorizontalLayoutContainer()),
                    "Depth Layout Container": AnyView(DepthLayoutContainer()),
                    "TODO": AnyView(ViewsAndModifiers())
            ]
        case .layoutViews:
            return [
                "VStack": AnyView(ViewsAndModifiers()),
                "LazyVStack": AnyView(ViewsAndModifiers()),
                "HStack": AnyView(ViewsAndModifiers()),
                "LazyHStack": AnyView(ViewsAndModifiers()),
                "ZStack": AnyView(ViewsAndModifiers()),
                "LazyZStack": AnyView(ViewsAndModifiers())
            ]
        }
    }

    func getView(for topic: String) -> AnyView {
        return detailViews[topic] ?? AnyView(Text("Couldn't find the view!"))
    }

}
