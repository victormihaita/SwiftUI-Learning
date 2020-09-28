//
//  Vertical Layout Container.swift
//  SwiftUI Learning
//
//  Created by Victor Mihaita on 28/09/2020.
//  Copyright © 2020 Victor Mihaita. All rights reserved.
//

import SwiftUI

struct VerticalLayoutContainer: View {
    var body: some View {
        VStack(spacing: 20) {
            Color.orange
                .cornerRadius(30)

            Color.orange
                .cornerRadius(30)

            Color.orange
                .cornerRadius(30)

            Color.orange
                .cornerRadius(30)
        }.padding()

    }
}

struct VerticalLayoutContainerPreviews: PreviewProvider {
    static var previews: some View {
        VerticalLayoutContainer()
    }
}
