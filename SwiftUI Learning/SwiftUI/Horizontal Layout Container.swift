//
//  Horizontal Layout Container.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct HorizontalLayoutContainer: View {
    var body: some View {
        ScrollView(.vertical) {
            HStack(spacing: 20) {
                Color.orange
                    .cornerRadius(30)

                Color.orange
                    .cornerRadius(30)

                Color.orange
                    .cornerRadius(30)
            }
            .padding()
            .frame(height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 30).stroke(Color.orange, lineWidth: 6))
            .padding()
        }
    }
}

struct HorizontalLayoutContainerPreviews: PreviewProvider {
    static var previews: some View {
        HorizontalLayoutContainer()
    }
}
