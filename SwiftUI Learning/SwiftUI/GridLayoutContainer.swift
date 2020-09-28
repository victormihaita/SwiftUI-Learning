//
//  GridLayoutContainer.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct GridLayoutContainer: View {
    let gridItems = [GridItem(.flexible(minimum: 10), spacing: 10, alignment: .leading),
                    GridItem(.flexible(minimum: 10), spacing: 10, alignment: .leading),
                    GridItem(.flexible(minimum: 10), spacing: 10, alignment: .leading)]
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(0..<100) { idx in
                        ColSpan(span: idx % 5 == 0) {
                            Image("car_image")
                                .resizable()
                                .scaledToFit()
                                .frame(width: idx % 5 == 0 ?
                                        geometry.size.width * 2 / 3:
                                        (geometry.size.width - 20) / 3)
                            }
                    }
                }
            }
        }
    }
}

struct GridLayoutContainer_Previews: PreviewProvider {
    static var previews: some View {
        GridLayoutContainer()
    }
}

struct ColSpan<Content: View>: View {
    let span: Bool
    let content: () -> Content

    init(span: Bool, @ViewBuilder content: @escaping () -> Content) {
        self.span = span
        self.content = content
    }

    var body: some View {
        content()

        if span { Color.clear }
    }
}
